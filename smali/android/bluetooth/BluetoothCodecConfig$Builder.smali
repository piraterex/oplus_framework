.class public final Landroid/bluetooth/BluetoothCodecConfig$Builder;
.super Ljava/lang/Object;
.source "BluetoothCodecConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothCodecConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBitsPerSample:I

.field private blacklist mChannelMode:I

.field private blacklist mCodecPriority:I

.field private blacklist mCodecSpecific1:J

.field private blacklist mCodecSpecific2:J

.field private blacklist mCodecSpecific3:J

.field private blacklist mCodecSpecific4:J

.field private blacklist mCodecType:I

.field private blacklist mSampleRate:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    const v0, 0xf4240

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecType:I

    .line 847
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecPriority:I

    .line 848
    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mSampleRate:I

    .line 849
    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mBitsPerSample:I

    .line 850
    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mChannelMode:I

    .line 851
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific1:J

    .line 852
    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific2:J

    .line 853
    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific3:J

    .line 854
    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific4:J

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/BluetoothCodecConfig;
    .locals 15

    .line 960
    new-instance v14, Landroid/bluetooth/BluetoothCodecConfig;

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecType:I

    iget v2, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecPriority:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mSampleRate:I

    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mBitsPerSample:I

    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mChannelMode:I

    iget-wide v6, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific1:J

    iget-wide v8, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific2:J

    iget-wide v10, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific3:J

    iget-wide v12, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific4:J

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJ)V

    return-object v14
.end method

.method public whitelist setBitsPerSample(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .locals 0
    .param p1, "bitsPerSample"    # I

    .line 896
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mBitsPerSample:I

    .line 897
    return-object p0
.end method

.method public whitelist setChannelMode(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .locals 0
    .param p1, "channelMode"    # I

    .line 907
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mChannelMode:I

    .line 908
    return-object p0
.end method

.method public whitelist setCodecPriority(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .locals 0
    .param p1, "codecPriority"    # I

    .line 874
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecPriority:I

    .line 875
    return-object p0
.end method

.method public whitelist setCodecSpecific1(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .locals 0
    .param p1, "codecSpecific1"    # J

    .line 918
    iput-wide p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific1:J

    .line 919
    return-object p0
.end method

.method public whitelist setCodecSpecific2(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .locals 0
    .param p1, "codecSpecific2"    # J

    .line 929
    iput-wide p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific2:J

    .line 930
    return-object p0
.end method

.method public whitelist setCodecSpecific3(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .locals 0
    .param p1, "codecSpecific3"    # J

    .line 940
    iput-wide p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific3:J

    .line 941
    return-object p0
.end method

.method public whitelist setCodecSpecific4(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .locals 0
    .param p1, "codecSpecific4"    # J

    .line 951
    iput-wide p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific4:J

    .line 952
    return-object p0
.end method

.method public whitelist setCodecType(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .locals 0
    .param p1, "codecType"    # I

    .line 863
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecType:I

    .line 864
    return-object p0
.end method

.method public whitelist setSampleRate(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .locals 0
    .param p1, "sampleRate"    # I

    .line 885
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mSampleRate:I

    .line 886
    return-object p0
.end method
