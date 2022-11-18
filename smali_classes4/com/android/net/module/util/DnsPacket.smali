.class public abstract Lcom/android/net/module/util/DnsPacket;
.super Ljava/lang/Object;
.source "DnsPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/module/util/DnsPacket$DnsRecord;,
        Lcom/android/net/module/util/DnsPacket$DnsHeader;,
        Lcom/android/net/module/util/DnsPacket$ParseException;
    }
.end annotation


# static fields
.field public static final blacklist ANSECTION:I = 0x1

.field public static final blacklist ARSECTION:I = 0x3

.field public static final blacklist NSSECTION:I = 0x2

.field private static final blacklist NUM_SECTIONS:I = 0x4

.field public static final blacklist QDSECTION:I

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected final blacklist mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

.field protected final blacklist mRecords:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lcom/android/net/module/util/DnsPacket$DnsRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 170
    const-class v0, Lcom/android/net/module/util/DnsPacket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/net/module/util/DnsPacket;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>([B)V
    .locals 7
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    if-eqz p1, :cond_3

    .line 182
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 183
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    new-instance v1, Lcom/android/net/module/util/DnsPacket$DnsHeader;

    invoke-direct {v1, p0, v0}, Lcom/android/net/module/util/DnsPacket$DnsHeader;-><init>(Lcom/android/net/module/util/DnsPacket;Ljava/nio/ByteBuffer;)V

    iput-object v1, p0, Lcom/android/net/module/util/DnsPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    nop

    .line 188
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    .line 190
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 191
    iget-object v3, p0, Lcom/android/net/module/util/DnsPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    invoke-virtual {v3, v2}, Lcom/android/net/module/util/DnsPacket$DnsHeader;->getRecordCount(I)I

    move-result v3

    .line 192
    .local v3, "count":I
    if-lez v3, :cond_0

    .line 193
    iget-object v4, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v5, v4, v2

    .line 195
    :cond_0
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 197
    :try_start_1
    iget-object v5, p0, Lcom/android/net/module/util/DnsPacket;->mRecords:[Ljava/util/List;

    aget-object v5, v5, v2

    new-instance v6, Lcom/android/net/module/util/DnsPacket$DnsRecord;

    invoke-direct {v6, p0, v2, v0}, Lcom/android/net/module/util/DnsPacket$DnsRecord;-><init>(Lcom/android/net/module/util/DnsPacket;ILjava/nio/ByteBuffer;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    .line 200
    nop

    .line 195
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    new-instance v5, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v6, "Parse record fail"

    invoke-direct {v5, v6, v1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 190
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .end local v3    # "count":I
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 203
    .end local v2    # "i":I
    :cond_2
    return-void

    .line 184
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v0

    .line 185
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    new-instance v1, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v2, "Parse Header fail, bad input data"

    invoke-direct {v1, v2, v0}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 177
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    :cond_3
    new-instance v0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v1, "Parse header failed, null input data"

    invoke-direct {v0, v1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
