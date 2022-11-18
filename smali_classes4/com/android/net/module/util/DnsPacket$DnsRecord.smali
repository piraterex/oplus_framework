.class public Lcom/android/net/module/util/DnsPacket$DnsRecord;
.super Ljava/lang/Object;
.source "DnsPacket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/module/util/DnsPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DnsRecord"
.end annotation


# static fields
.field private static final blacklist MAXNAMESIZE:I = 0xff

.field public static final blacklist NAME_COMPRESSION:I = 0xc0

.field public static final blacklist NAME_NORMAL:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "DnsRecord"


# instance fields
.field public final blacklist dName:Ljava/lang/String;

.field private final blacklist mRdata:[B

.field public final blacklist nsClass:I

.field public final blacklist nsType:I

.field final synthetic blacklist this$0:Lcom/android/net/module/util/DnsPacket;

.field public final blacklist ttl:J


# direct methods
.method constructor blacklist <init>(Lcom/android/net/module/util/DnsPacket;ILjava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/net/module/util/DnsPacket;
    .param p2, "recordType"    # I
    .param p3, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->this$0:Lcom/android/net/module/util/DnsPacket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p3, v0, v1}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->dName:Ljava/lang/String;

    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xff

    if-gt v1, v2, :cond_1

    .line 140
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    .line 141
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsClass:I

    .line 143
    if-eqz p2, :cond_0

    .line 144
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->ttl:J

    .line 145
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    .line 146
    .local v0, "length":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    .line 147
    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 148
    .end local v0    # "length":I
    goto :goto_0

    .line 149
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->ttl:J

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    .line 152
    :goto_0
    return-void

    .line 137
    :cond_1
    new-instance v1, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse name fail, name size is too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 138
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist getRR()[B
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/net/module/util/DnsPacket$DnsRecord;->mRdata:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0
.end method
