.class public Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;
.super Ljava/lang/Object;
.source "DnsPacketUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/module/util/DnsPacketUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsRecordParser"
.end annotation


# static fields
.field private static final blacklist MAXLABELCOUNT:I = 0x80

.field private static final blacklist MAXLABELSIZE:I = 0x3f

.field private static final blacklist sByteFormat:Ljava/text/DecimalFormat;

.field private static final blacklist sPos:Ljava/text/FieldPosition;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->sByteFormat:Ljava/text/DecimalFormat;

    .line 44
    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    sput-object v0, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->sPos:Ljava/text/FieldPosition;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist labelToString([B)Ljava/lang/String;
    .locals 7
    .param p0, "label"    # [B

    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 54
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 55
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    .line 57
    .local v2, "b":I
    const/16 v3, 0x20

    const/16 v4, 0x5c

    if-le v2, v3, :cond_3

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_0

    goto :goto_2

    .line 61
    :cond_0
    const/16 v3, 0x22

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_2

    if-eq v2, v4, :cond_2

    const/16 v3, 0x28

    if-eq v2, v3, :cond_2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_2

    const/16 v3, 0x24

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 68
    :cond_1
    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 64
    :cond_2
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    int-to-char v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 59
    :cond_3
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 60
    sget-object v3, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->sByteFormat:Ljava/text/DecimalFormat;

    int-to-long v4, v2

    sget-object v6, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->sPos:Ljava/text/FieldPosition;

    invoke-virtual {v3, v4, v5, v0, v6}, Ljava/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 54
    .end local v2    # "b":I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    .locals 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "depth"    # I
    .param p2, "isNameCompressionSupported"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 85
    const/16 v0, 0x80

    if-gt p1, v0, :cond_8

    .line 88
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    .line 89
    .local v0, "len":I
    and-int/lit16 v1, v0, 0xc0

    .line 90
    .local v1, "mask":I
    if-nez v0, :cond_0

    .line 91
    const-string v2, ""

    return-object v2

    .line 92
    :cond_0
    const/16 v2, 0xc0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    :cond_1
    if-nez p2, :cond_3

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 94
    :cond_2
    new-instance v2, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse name fail, bad label type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_3
    :goto_0
    if-ne v1, v2, :cond_5

    .line 97
    and-int/lit16 v2, v0, -0xc1

    shl-int/lit8 v2, v2, 0x8

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v3

    add-int/2addr v2, v3

    .line 98
    .local v2, "offset":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 99
    .local v3, "oldPos":I
    add-int/lit8 v4, v3, -0x2

    if-ge v2, v4, :cond_4

    .line 103
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 104
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, p2}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "pointed":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    return-object v4

    .line 100
    .end local v4    # "pointed":Ljava/lang/String;
    :cond_4
    new-instance v4, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v5, "Parse compression name fail, invalid compression"

    invoke-direct {v4, v5}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    .end local v2    # "offset":I
    .end local v3    # "oldPos":I
    :cond_5
    new-array v2, v0, [B

    .line 109
    .local v2, "label":[B
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 110
    invoke-static {v2}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->labelToString([B)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "head":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3f

    if-gt v4, v5, :cond_7

    .line 114
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, p2}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "tail":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v5, v3

    goto :goto_1

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    return-object v5

    .line 112
    .end local v4    # "tail":Ljava/lang/String;
    :cond_7
    new-instance v4, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v5, "Parse name fail, invalid label length"

    invoke-direct {v4, v5}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 86
    .end local v0    # "len":I
    .end local v1    # "mask":I
    .end local v2    # "label":[B
    .end local v3    # "head":Ljava/lang/String;
    :cond_8
    new-instance v0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v1, "Failed to parse name, too many labels"

    invoke-direct {v0, v1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
