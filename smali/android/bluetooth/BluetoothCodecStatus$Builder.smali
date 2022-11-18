.class public final Landroid/bluetooth/BluetoothCodecStatus$Builder;
.super Ljava/lang/Object;
.source "BluetoothCodecStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothCodecStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

.field private blacklist mCodecsLocalCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCodecsSelectableCapabilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus$Builder;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 224
    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus$Builder;->mCodecsLocalCapabilities:Ljava/util/List;

    .line 225
    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecStatus$Builder;->mCodecsSelectableCapabilities:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/BluetoothCodecStatus;
    .locals 4

    .line 267
    new-instance v0, Landroid/bluetooth/BluetoothCodecStatus;

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecStatus$Builder;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    iget-object v2, p0, Landroid/bluetooth/BluetoothCodecStatus$Builder;->mCodecsLocalCapabilities:Ljava/util/List;

    iget-object v3, p0, Landroid/bluetooth/BluetoothCodecStatus$Builder;->mCodecsSelectableCapabilities:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothCodecStatus;-><init>(Landroid/bluetooth/BluetoothCodecConfig;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public whitelist setCodecConfig(Landroid/bluetooth/BluetoothCodecConfig;)Landroid/bluetooth/BluetoothCodecStatus$Builder;
    .locals 0
    .param p1, "codecConfig"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 234
    iput-object p1, p0, Landroid/bluetooth/BluetoothCodecStatus$Builder;->mCodecConfig:Landroid/bluetooth/BluetoothCodecConfig;

    .line 235
    return-object p0
.end method

.method public whitelist setCodecsLocalCapabilities(Ljava/util/List;)Landroid/bluetooth/BluetoothCodecStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;)",
            "Landroid/bluetooth/BluetoothCodecStatus$Builder;"
        }
    .end annotation

    .line 246
    .local p1, "codecsLocalCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothCodecConfig;>;"
    iput-object p1, p0, Landroid/bluetooth/BluetoothCodecStatus$Builder;->mCodecsLocalCapabilities:Ljava/util/List;

    .line 247
    return-object p0
.end method

.method public whitelist setCodecsSelectableCapabilities(Ljava/util/List;)Landroid/bluetooth/BluetoothCodecStatus$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;)",
            "Landroid/bluetooth/BluetoothCodecStatus$Builder;"
        }
    .end annotation

    .line 258
    .local p1, "codecsSelectableCapabilities":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothCodecConfig;>;"
    iput-object p1, p0, Landroid/bluetooth/BluetoothCodecStatus$Builder;->mCodecsSelectableCapabilities:Ljava/util/List;

    .line 259
    return-object p0
.end method
