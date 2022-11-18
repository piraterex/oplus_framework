.class public final Landroid/telecom/Call$RttCall;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RttCall"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$RttCall$RttAudioMode;
    }
.end annotation


# static fields
.field private static final greylist-max-o READ_BUFFER_SIZE:I = 0x3e8

.field public static final whitelist RTT_MODE_FULL:I = 0x1

.field public static final whitelist RTT_MODE_HCO:I = 0x2

.field public static final greylist-max-o RTT_MODE_INVALID:I = 0x0

.field public static final whitelist RTT_MODE_VCO:I = 0x3


# instance fields
.field private final greylist-max-o mInCallAdapter:Landroid/telecom/InCallAdapter;

.field private greylist-max-o mReadBuffer:[C

.field private greylist-max-o mReceiveStream:Ljava/io/InputStreamReader;

.field private greylist-max-o mRttMode:I

.field private final greylist-max-o mTelecomCallId:Ljava/lang/String;

.field private greylist-max-o mTransmitStream:Ljava/io/OutputStreamWriter;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/io/InputStreamReader;Ljava/io/OutputStreamWriter;ILandroid/telecom/InCallAdapter;)V
    .locals 1
    .param p1, "telecomCallId"    # Ljava/lang/String;
    .param p2, "receiveStream"    # Ljava/io/InputStreamReader;
    .param p3, "transmitStream"    # Ljava/io/OutputStreamWriter;
    .param p4, "mode"    # I
    .param p5, "inCallAdapter"    # Landroid/telecom/InCallAdapter;

    .line 1579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1573
    const/16 v0, 0x3e8

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    .line 1580
    iput-object p1, p0, Landroid/telecom/Call$RttCall;->mTelecomCallId:Ljava/lang/String;

    .line 1581
    iput-object p2, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    .line 1582
    iput-object p3, p0, Landroid/telecom/Call$RttCall;->mTransmitStream:Ljava/io/OutputStreamWriter;

    .line 1583
    iput p4, p0, Landroid/telecom/Call$RttCall;->mRttMode:I

    .line 1584
    iput-object p5, p0, Landroid/telecom/Call$RttCall;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 1585
    return-void
.end method


# virtual methods
.method public greylist-max-o close()V
    .locals 1

    .line 1670
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1673
    goto :goto_0

    .line 1671
    :catch_0
    move-exception v0

    .line 1675
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mTransmitStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1678
    goto :goto_1

    .line 1676
    :catch_1
    move-exception v0

    .line 1679
    :goto_1
    return-void
.end method

.method public whitelist getRttAudioMode()I
    .locals 1

    .line 1593
    iget v0, p0, Landroid/telecom/Call$RttCall;->mRttMode:I

    return v0
.end method

.method public whitelist read()Ljava/lang/String;
    .locals 5

    .line 1635
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    iget-object v3, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v2

    .line 1636
    .local v2, "numRead":I
    if-gez v2, :cond_0

    .line 1637
    return-object v0

    .line 1639
    :cond_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    invoke-direct {v3, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1640
    .end local v2    # "numRead":I
    :catch_0
    move-exception v2

    .line 1641
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    const-string v1, "Exception encountered when reading from InputStreamReader: %s"

    invoke-static {p0, v1, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1642
    return-object v0
.end method

.method public whitelist readImmediately()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1653
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->ready()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1654
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mReceiveStream:Ljava/io/InputStreamReader;

    iget-object v2, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v0

    .line 1655
    .local v0, "numRead":I
    if-gez v0, :cond_0

    .line 1656
    return-object v1

    .line 1658
    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/Call$RttCall;->mReadBuffer:[C

    invoke-direct {v1, v2, v4, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 1660
    .end local v0    # "numRead":I
    :cond_1
    return-object v1
.end method

.method public whitelist setRttMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 1603
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call$RttCall;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->setRttMode(Ljava/lang/String;I)V

    .line 1604
    return-void
.end method

.method public whitelist write(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1619
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mTransmitStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1620
    iget-object v0, p0, Landroid/telecom/Call$RttCall;->mTransmitStream:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 1621
    return-void
.end method
