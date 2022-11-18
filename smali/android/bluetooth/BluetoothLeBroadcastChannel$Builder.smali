.class public final Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastChannel.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mChannelIndex:I

.field private blacklist mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

.field private blacklist mIsSelected:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mIsSelected:Z

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mChannelIndex:I

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 156
    return-void
.end method

.method public constructor whitelist <init>(Landroid/bluetooth/BluetoothLeBroadcastChannel;)V
    .locals 1
    .param p1, "original"    # Landroid/bluetooth/BluetoothLeBroadcastChannel;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mIsSelected:Z

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mChannelIndex:I

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 166
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->isSelected()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mIsSelected:Z

    .line 167
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->getChannelIndex()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mChannelIndex:I

    .line 168
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastChannel;->getCodecMetadata()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 169
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/BluetoothLeBroadcastChannel;
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 231
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    const-string v1, "codec metadata cannot be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    iget v0, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mChannelIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 236
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastChannel;

    iget-boolean v1, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mIsSelected:Z

    iget v2, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mChannelIndex:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/bluetooth/BluetoothLeBroadcastChannel;-><init>(ZILandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;Landroid/bluetooth/BluetoothLeBroadcastChannel-IA;)V

    return-object v0

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mChannelIndex cannot be -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setChannelIndex(I)Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;
    .locals 2
    .param p1, "channelIndex"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 197
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 201
    iput p1, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mChannelIndex:I

    .line 202
    return-object p0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "channelIndex cannot be -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCodecMetadata(Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;
    .locals 1
    .param p1, "codecMetadata"    # Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 216
    const-string v0, "codecMetadata cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mCodecMetadata:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 218
    return-object p0
.end method

.method public whitelist setSelected(Z)Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;
    .locals 0
    .param p1, "isSelected"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 183
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothLeBroadcastChannel$Builder;->mIsSelected:Z

    .line 184
    return-object p0
.end method
