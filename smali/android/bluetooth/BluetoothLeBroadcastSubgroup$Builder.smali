.class public final Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
.super Ljava/lang/Object;
.source "BluetoothLeBroadcastSubgroup.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothLeBroadcastChannel;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCodecId:J

.field private blacklist mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

.field private blacklist mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecId:J

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 197
    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    .line 206
    return-void
.end method

.method public constructor whitelist <init>(Landroid/bluetooth/BluetoothLeBroadcastSubgroup;)V
    .locals 2
    .param p1, "original"    # Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecId:J

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 197
    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    .line 216
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getCodecId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecId:J

    .line 217
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getCodecSpecificConfig()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 218
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getContentMetadata()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 219
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;->getChannels()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    .line 220
    return-void
.end method


# virtual methods
.method public whitelist addChannel(Landroid/bluetooth/BluetoothLeBroadcastChannel;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
    .locals 1
    .param p1, "channel"    # Landroid/bluetooth/BluetoothLeBroadcastChannel;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 288
    const-string v0, "channel cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 289
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    return-object p0
.end method

.method public whitelist build()Landroid/bluetooth/BluetoothLeBroadcastSubgroup;
    .locals 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 316
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    const-string v1, "CodecSpecificConfig is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 317
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    const-string v1, "ContentMetadata is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;

    iget-wide v2, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecId:J

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    iget-object v5, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    iget-object v6, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/BluetoothLeBroadcastSubgroup;-><init>(JLandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;Landroid/bluetooth/BluetoothLeAudioContentMetadata;Ljava/util/List;Landroid/bluetooth/BluetoothLeBroadcastSubgroup-IA;)V

    return-object v0

    .line 319
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must have at least one channel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clearChannel()Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 302
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 303
    return-object p0
.end method

.method public whitelist setCodecId(J)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
    .locals 0
    .param p1, "codecId"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 238
    iput-wide p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecId:J

    .line 239
    return-object p0
.end method

.method public whitelist setCodecSpecificConfig(Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
    .locals 1
    .param p1, "codecSpecificConfig"    # Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 253
    const-string v0, "codecSpecificConfig cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 254
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mCodecSpecificConfig:Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 255
    return-object p0
.end method

.method public whitelist setContentMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;
    .locals 1
    .param p1, "contentMetadata"    # Landroid/bluetooth/BluetoothLeAudioContentMetadata;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 269
    const-string v0, "contentMetadata cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 270
    iput-object p1, p0, Landroid/bluetooth/BluetoothLeBroadcastSubgroup$Builder;->mContentMetadata:Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    .line 271
    return-object p0
.end method
