.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SntpClient$InvalidServerReplyException;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = true

.field private static final greylist-max-o NTP_LEAP_NOSYNC:I = 0x3

.field private static final greylist-max-o NTP_MODE_BROADCAST:I = 0x5

.field private static final greylist-max-o NTP_MODE_CLIENT:I = 0x3

.field private static final greylist-max-o NTP_MODE_SERVER:I = 0x4

.field private static final greylist-max-o NTP_PACKET_SIZE:I = 0x30

.field private static final greylist-max-o NTP_STRATUM_DEATH:I = 0x0

.field private static final greylist-max-o NTP_STRATUM_MAX:I = 0xf

.field private static final greylist-max-o NTP_VERSION:I = 0x3

.field private static final greylist-max-o ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final greylist-max-o RECEIVE_TIME_OFFSET:I = 0x20

.field private static final greylist-max-o REFERENCE_TIME_OFFSET:I = 0x10

.field public static final blacklist STANDARD_NTP_PORT:I = 0x7b

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SntpClient"

.field private static final greylist-max-o TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private blacklist mClockOffset:J

.field private greylist-max-o mNtpTime:J

.field private greylist-max-o mNtpTimeReference:J

.field private final blacklist mRandom:Ljava/util/Random;

.field private greylist-max-o mRoundTripTime:J

.field private final blacklist mSystemTimeSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist <init>()V
    .locals 2

    .line 98
    new-instance v0, Landroid/net/SntpClient$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/net/SntpClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {}, Landroid/net/SntpClient;->defaultRandom()Ljava/util/Random;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/SntpClient;-><init>(Ljava/util/function/Supplier;Ljava/util/Random;)V

    .line 99
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/function/Supplier;Ljava/util/Random;)V
    .locals 1
    .param p2, "random"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/time/Instant;",
            ">;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    .line 102
    .local p1, "systemTimeSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/time/Instant;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    iput-object v0, p0, Landroid/net/SntpClient;->mSystemTimeSupplier:Ljava/util/function/Supplier;

    .line 104
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    iput-object v0, p0, Landroid/net/SntpClient;->mRandom:Ljava/util/Random;

    .line 105
    return-void
.end method

.method public static blacklist calculateClockOffset(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Ljava/time/Duration;
    .locals 3
    .param p0, "clientRequestTimestamp"    # Landroid/net/sntp/Timestamp64;
    .param p1, "serverReceiveTimestamp"    # Landroid/net/sntp/Timestamp64;
    .param p2, "serverTransmitTimestamp"    # Landroid/net/sntp/Timestamp64;
    .param p3, "clientResponseTimestamp"    # Landroid/net/sntp/Timestamp64;

    .line 236
    invoke-static {p0, p1}, Landroid/net/sntp/Duration64;->between(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Landroid/net/sntp/Duration64;

    move-result-object v0

    .line 237
    invoke-static {p3, p2}, Landroid/net/sntp/Duration64;->between(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Landroid/net/sntp/Duration64;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sntp/Duration64;->plus(Landroid/net/sntp/Duration64;)Ljava/time/Duration;

    move-result-object v0

    .line 238
    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/time/Duration;->dividedBy(J)Ljava/time/Duration;

    move-result-object v0

    .line 236
    return-object v0
.end method

.method private static blacklist checkValidServerReply(BBILandroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)V
    .locals 3
    .param p0, "leap"    # B
    .param p1, "mode"    # B
    .param p2, "stratum"    # I
    .param p3, "transmitTimestamp"    # Landroid/net/sntp/Timestamp64;
    .param p4, "referenceTimestamp"    # Landroid/net/sntp/Timestamp64;
    .param p5, "randomizedRequestTimestamp"    # Landroid/net/sntp/Timestamp64;
    .param p6, "originateTimestamp"    # Landroid/net/sntp/Timestamp64;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SntpClient$InvalidServerReplyException;
        }
    .end annotation

    .line 291
    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    .line 294
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "untrusted mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_1
    :goto_0
    if-eqz p2, :cond_5

    const/16 v0, 0xf

    if-gt p2, v0, :cond_5

    .line 300
    invoke-virtual {p5, p6}, Landroid/net/sntp/Timestamp64;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 304
    sget-object v0, Landroid/net/sntp/Timestamp64;->ZERO:Landroid/net/sntp/Timestamp64;

    invoke-virtual {p3, v0}, Landroid/net/sntp/Timestamp64;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 307
    sget-object v0, Landroid/net/sntp/Timestamp64;->ZERO:Landroid/net/sntp/Timestamp64;

    invoke-virtual {p4, v0}, Landroid/net/sntp/Timestamp64;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 310
    return-void

    .line 308
    :cond_2
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "zero referenceTimestamp"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_3
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "zero transmitTimestamp"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_4
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string v1, "originateTimestamp != randomizedRequestTimestamp"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_5
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "untrusted stratum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_6
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "unsynchronized server"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist defaultRandom()Ljava/util/Random;
    .locals 4

    .line 356
    :try_start_0
    invoke-static {}, Ljava/security/SecureRandom;->getInstanceStrong()Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .local v0, "random":Ljava/util/Random;
    goto :goto_0

    .line 357
    .end local v0    # "random":Ljava/util/Random;
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "SntpClient"

    const-string v2, "Unable to access SecureRandom"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    move-object v0, v1

    .line 362
    .local v0, "random":Ljava/util/Random;
    :goto_0
    return-object v0
.end method

.method private blacklist readTimeStamp([BI)Landroid/net/sntp/Timestamp64;
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .line 329
    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->readUnsigned32([BI)J

    move-result-wide v0

    .line 330
    .local v0, "seconds":J
    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2}, Landroid/net/SntpClient;->readUnsigned32([BI)J

    move-result-wide v2

    long-to-int v2, v2

    .line 331
    .local v2, "fractionBits":I
    invoke-static {v0, v1, v2}, Landroid/net/sntp/Timestamp64;->fromComponents(JI)Landroid/net/sntp/Timestamp64;

    move-result-object v3

    return-object v3
.end method

.method private blacklist readUnsigned32([BI)J
    .locals 9
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .line 316
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "offset":I
    .local v0, "offset":I
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 317
    .local p2, "i0":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .local v1, "offset":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 318
    .local v0, "i1":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 319
    .local v1, "i2":I
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    .line 321
    .local v3, "i3":I
    shl-int/lit8 v4, p2, 0x18

    shl-int/lit8 v5, v0, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    .line 322
    .local v4, "bits":I
    int-to-long v5, v4

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    return-wide v5
.end method

.method private blacklist writeTimeStamp([BILandroid/net/sntp/Timestamp64;)V
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "timestamp"    # Landroid/net/sntp/Timestamp64;

    .line 338
    invoke-virtual {p3}, Landroid/net/sntp/Timestamp64;->getEraSeconds()J

    move-result-wide v0

    .line 340
    .local v0, "seconds":J
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "offset":I
    .local v2, "offset":I
    const/16 v3, 0x18

    ushr-long v3, v0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 341
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    const/16 v3, 0x10

    ushr-long v3, v0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 342
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "offset":I
    .restart local v2    # "offset":I
    const/16 v3, 0x8

    ushr-long v3, v0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 343
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    long-to-int v3, v0

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 345
    invoke-virtual {p3}, Landroid/net/sntp/Timestamp64;->getFractionBits()I

    move-result v2

    .line 347
    .local v2, "fractionBits":I
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "offset":I
    .local v3, "offset":I
    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 348
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "offset":I
    .restart local p2    # "offset":I
    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    .line 349
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "offset":I
    .restart local v3    # "offset":I
    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    .line 350
    int-to-byte p2, v2

    aput-byte p2, p1, v3

    .line 351
    return-void
.end method


# virtual methods
.method public blacklist getClockOffset()J
    .locals 2

    .line 253
    iget-wide v0, p0, Landroid/net/SntpClient;->mClockOffset:J

    return-wide v0
.end method

.method public greylist getNtpTime()J
    .locals 2

    .line 263
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public greylist getNtpTimeReference()J
    .locals 2

    .line 274
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public greylist getRoundTripTime()J
    .locals 2

    .line 284
    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public greylist requestTime(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    const-string v0, "SntpClient"

    const-string v1, "Shame on you for calling the hidden API requestTime()!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestTime(Ljava/lang/String;IILandroid/net/Network;)Z
    .locals 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .param p4, "network"    # Landroid/net/Network;

    .line 119
    const-string v0, "SntpClient"

    invoke-virtual {p4}, Landroid/net/Network;->getPrivateDnsBypassingCopy()Landroid/net/Network;

    move-result-object v1

    .line 121
    .local v1, "networkForResolv":Landroid/net/Network;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 122
    .local v2, "addresses":[Ljava/net/InetAddress;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 123
    aget-object v4, v2, v3

    invoke-virtual {p0, v4, p2, p3, v1}, Landroid/net/SntpClient;->requestTime(Ljava/net/InetAddress;IILandroid/net/Network;)Z

    move-result v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    .line 124
    const/4 v0, 0x1

    return v0

    .line 122
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    .end local v2    # "addresses":[Ljava/net/InetAddress;
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :goto_1
    const-string v2, "request time failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o requestTime(Ljava/net/InetAddress;IILandroid/net/Network;)Z
    .locals 36
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "timeout"    # I
    .param p4, "network"    # Landroid/net/Network;

    .line 137
    move-object/from16 v1, p0

    const-string v2, "SntpClient"

    const/4 v3, 0x0

    .line 138
    .local v3, "socket":Ljava/net/DatagramSocket;
    const/16 v0, -0xbf

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v4

    .line 141
    .local v4, "oldTag":I
    const/4 v5, 0x0

    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    move-object v3, v0

    .line 142
    move-object/from16 v6, p4

    invoke-virtual {v6, v3}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    .line 143
    move/from16 v7, p3

    invoke-virtual {v3, v7}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 144
    const/16 v0, 0x30

    new-array v0, v0, [B

    .line 145
    .local v0, "buffer":[B
    new-instance v8, Ljava/net/DatagramPacket;

    array-length v9, v0

    move-object/from16 v10, p1

    move/from16 v11, p2

    invoke-direct {v8, v0, v9, v10, v11}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 150
    .local v8, "request":Ljava/net/DatagramPacket;
    const/16 v9, 0x1b

    aput-byte v9, v0, v5

    .line 153
    iget-object v9, v1, Landroid/net/SntpClient;->mSystemTimeSupplier:Ljava/util/function/Supplier;

    invoke-interface {v9}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/time/Instant;

    .line 154
    .local v9, "requestTime":Ljava/time/Instant;
    invoke-static {v9}, Landroid/net/sntp/Timestamp64;->fromInstant(Ljava/time/Instant;)Landroid/net/sntp/Timestamp64;

    move-result-object v12

    .line 156
    .local v12, "requestTimestamp":Landroid/net/sntp/Timestamp64;
    iget-object v13, v1, Landroid/net/SntpClient;->mRandom:Ljava/util/Random;

    .line 157
    invoke-virtual {v12, v13}, Landroid/net/sntp/Timestamp64;->randomizeSubMillis(Ljava/util/Random;)Landroid/net/sntp/Timestamp64;

    move-result-object v13

    .line 158
    .local v13, "randomizedRequestTimestamp":Landroid/net/sntp/Timestamp64;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-wide/from16 v21, v14

    .line 159
    .local v21, "requestTicks":J
    const/16 v14, 0x28

    invoke-direct {v1, v0, v14, v13}, Landroid/net/SntpClient;->writeTimeStamp([BILandroid/net/sntp/Timestamp64;)V

    .line 161
    invoke-virtual {v3, v8}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 164
    new-instance v15, Ljava/net/DatagramPacket;

    array-length v14, v0

    invoke-direct {v15, v0, v14}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 165
    .local v15, "response":Ljava/net/DatagramPacket;
    invoke-virtual {v3, v15}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    move-wide/from16 v23, v17

    .line 167
    .local v23, "responseTicks":J
    move-wide/from16 v5, v23

    move-object/from16 v23, v8

    .end local v8    # "request":Ljava/net/DatagramPacket;
    .local v5, "responseTicks":J
    .local v23, "request":Ljava/net/DatagramPacket;
    sub-long v7, v5, v21

    invoke-virtual {v9, v7, v8}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v7

    .line 168
    .local v7, "responseTime":Ljava/time/Instant;
    invoke-static {v7}, Landroid/net/sntp/Timestamp64;->fromInstant(Ljava/time/Instant;)Landroid/net/sntp/Timestamp64;

    move-result-object v8

    .line 171
    .local v8, "responseTimestamp":Landroid/net/sntp/Timestamp64;
    const/4 v14, 0x0

    aget-byte v17, v0, v14

    shr-int/lit8 v17, v17, 0x6

    and-int/lit8 v14, v17, 0x3

    int-to-byte v14, v14

    .line 172
    .local v14, "leap":B
    const/16 v17, 0x0

    aget-byte v18, v0, v17

    move-object/from16 v24, v9

    .end local v9    # "requestTime":Ljava/time/Instant;
    .local v24, "requestTime":Ljava/time/Instant;
    and-int/lit8 v9, v18, 0x7

    int-to-byte v9, v9

    .line 173
    .local v9, "mode":B
    const/16 v25, 0x1

    aget-byte v10, v0, v25

    and-int/lit16 v10, v10, 0xff

    .line 174
    .local v10, "stratum":I
    const/16 v11, 0x10

    invoke-direct {v1, v0, v11}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v18

    .line 175
    .local v18, "referenceTimestamp":Landroid/net/sntp/Timestamp64;
    const/16 v11, 0x18

    invoke-direct {v1, v0, v11}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v20

    .line 176
    .local v20, "originateTimestamp":Landroid/net/sntp/Timestamp64;
    const/16 v11, 0x20

    invoke-direct {v1, v0, v11}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v11

    .line 177
    .local v11, "receiveTimestamp":Landroid/net/sntp/Timestamp64;
    move/from16 v17, v14

    const/16 v14, 0x28

    .end local v14    # "leap":B
    .local v17, "leap":B
    invoke-direct {v1, v0, v14}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v14

    .line 180
    .local v14, "transmitTimestamp":Landroid/net/sntp/Timestamp64;
    move-object/from16 v27, v14

    move/from16 v26, v17

    .end local v14    # "transmitTimestamp":Landroid/net/sntp/Timestamp64;
    .end local v17    # "leap":B
    .local v26, "leap":B
    .local v27, "transmitTimestamp":Landroid/net/sntp/Timestamp64;
    move/from16 v14, v26

    move-object/from16 v28, v15

    .end local v15    # "response":Ljava/net/DatagramPacket;
    .local v28, "response":Ljava/net/DatagramPacket;
    move v15, v9

    move/from16 v16, v10

    move-object/from16 v17, v27

    move-object/from16 v19, v13

    invoke-static/range {v14 .. v20}, Landroid/net/SntpClient;->checkValidServerReply(BBILandroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)V

    .line 183
    sub-long v14, v5, v21

    .line 184
    .local v14, "totalTransactionDurationMillis":J
    nop

    .line 185
    move-object/from16 v16, v0

    move-object/from16 v0, v27

    .end local v27    # "transmitTimestamp":Landroid/net/sntp/Timestamp64;
    .local v0, "transmitTimestamp":Landroid/net/sntp/Timestamp64;
    .local v16, "buffer":[B
    invoke-static {v11, v0}, Landroid/net/sntp/Duration64;->between(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Landroid/net/sntp/Duration64;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/sntp/Duration64;->toDuration()Ljava/time/Duration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/time/Duration;->toMillis()J

    move-result-wide v29

    .line 186
    .local v29, "serverDurationMillis":J
    move/from16 v17, v9

    move/from16 v19, v10

    .end local v9    # "mode":B
    .end local v10    # "stratum":I
    .local v17, "mode":B
    .local v19, "stratum":I
    sub-long v9, v14, v29

    .line 188
    .local v9, "roundTripTimeMillis":J
    invoke-static {v12, v11, v0, v8}, Landroid/net/SntpClient;->calculateClockOffset(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Ljava/time/Duration;

    move-result-object v27

    move-object/from16 v31, v27

    .line 190
    .local v31, "clockOffsetDuration":Ljava/time/Duration;
    invoke-virtual/range {v31 .. v31}, Ljava/time/Duration;->toMillis()J

    move-result-wide v32

    move-wide/from16 v34, v32

    .line 192
    .local v34, "clockOffsetMillis":J
    nop

    .line 193
    move-object/from16 v27, v0

    .end local v0    # "transmitTimestamp":Landroid/net/sntp/Timestamp64;
    .restart local v27    # "transmitTimestamp":Landroid/net/sntp/Timestamp64;
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    move-object/from16 v33, v11

    move-object/from16 v32, v12

    move-wide/from16 v11, v34

    .end local v12    # "requestTimestamp":Landroid/net/sntp/Timestamp64;
    .end local v34    # "clockOffsetMillis":J
    .local v11, "clockOffsetMillis":J
    .local v32, "requestTimestamp":Landroid/net/sntp/Timestamp64;
    .local v33, "receiveTimestamp":Landroid/net/sntp/Timestamp64;
    invoke-static {v0, v9, v10, v11, v12}, Landroid/net/EventLogTags;->writeNtpSuccess(Ljava/lang/String;JJ)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v8

    .end local v8    # "responseTimestamp":Landroid/net/sntp/Timestamp64;
    .local v34, "responseTimestamp":Landroid/net/sntp/Timestamp64;
    const-string v8, "round trip: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "ms, clock offset: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "ms"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iput-wide v11, v1, Landroid/net/SntpClient;->mClockOffset:J

    .line 202
    move-object/from16 v0, v31

    .end local v31    # "clockOffsetDuration":Ljava/time/Duration;
    .local v0, "clockOffsetDuration":Ljava/time/Duration;
    invoke-virtual {v7, v0}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v8

    move-object/from16 v31, v7

    .end local v7    # "responseTime":Ljava/time/Instant;
    .local v31, "responseTime":Ljava/time/Instant;
    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v7

    iput-wide v7, v1, Landroid/net/SntpClient;->mNtpTime:J

    .line 203
    iput-wide v5, v1, Landroid/net/SntpClient;->mNtpTimeReference:J

    .line 204
    iput-wide v9, v1, Landroid/net/SntpClient;->mRoundTripTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v0    # "clockOffsetDuration":Ljava/time/Duration;
    .end local v5    # "responseTicks":J
    .end local v9    # "roundTripTimeMillis":J
    .end local v11    # "clockOffsetMillis":J
    .end local v13    # "randomizedRequestTimestamp":Landroid/net/sntp/Timestamp64;
    .end local v14    # "totalTransactionDurationMillis":J
    .end local v16    # "buffer":[B
    .end local v17    # "mode":B
    .end local v18    # "referenceTimestamp":Landroid/net/sntp/Timestamp64;
    .end local v19    # "stratum":I
    .end local v20    # "originateTimestamp":Landroid/net/sntp/Timestamp64;
    .end local v21    # "requestTicks":J
    .end local v23    # "request":Ljava/net/DatagramPacket;
    .end local v24    # "requestTime":Ljava/time/Instant;
    .end local v26    # "leap":B
    .end local v27    # "transmitTimestamp":Landroid/net/sntp/Timestamp64;
    .end local v28    # "response":Ljava/net/DatagramPacket;
    .end local v29    # "serverDurationMillis":J
    .end local v31    # "responseTime":Ljava/time/Instant;
    .end local v32    # "requestTimestamp":Landroid/net/sntp/Timestamp64;
    .end local v33    # "receiveTimestamp":Landroid/net/sntp/Timestamp64;
    .end local v34    # "responseTimestamp":Landroid/net/sntp/Timestamp64;
    nop

    .line 211
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 213
    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 214
    nop

    .line 216
    return v25

    .line 210
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request time failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    nop

    .line 210
    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 213
    :cond_0
    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 208
    const/4 v2, 0x0

    return v2

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v3, :cond_1

    .line 211
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    .line 213
    :cond_1
    invoke-static {v4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 214
    throw v0
.end method
