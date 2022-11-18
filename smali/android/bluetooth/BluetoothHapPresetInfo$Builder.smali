.class public final Landroid/bluetooth/BluetoothHapPresetInfo$Builder;
.super Ljava/lang/Object;
.source "BluetoothHapPresetInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHapPresetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mIsAvailable:Z

.field private blacklist mIsWritable:Z

.field private blacklist mPresetIndex:I

.field private blacklist mPresetName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mPresetIndex:I

    .line 138
    const-string v1, ""

    iput-object v1, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mPresetName:Ljava/lang/String;

    .line 139
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mIsWritable:Z

    .line 140
    iput-boolean v0, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mIsAvailable:Z

    .line 149
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    if-ltz p1, :cond_0

    .line 158
    iput p1, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mPresetIndex:I

    .line 159
    iput-object p2, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mPresetName:Ljava/lang/String;

    .line 160
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Preset index for HAP shall be a non-negative value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size of the preset name for HAP shall be at least one character long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/bluetooth/BluetoothHapPresetInfo;
    .locals 5

    .line 189
    new-instance v0, Landroid/bluetooth/BluetoothHapPresetInfo;

    iget v1, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mPresetIndex:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mPresetName:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mIsWritable:Z

    iget-boolean v4, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mIsAvailable:Z

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/bluetooth/BluetoothHapPresetInfo;-><init>(ILjava/lang/String;ZZ)V

    return-object v0
.end method

.method public blacklist setAvailable(Z)Landroid/bluetooth/BluetoothHapPresetInfo$Builder;
    .locals 0
    .param p1, "isAvailable"    # Z

    .line 180
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mIsAvailable:Z

    .line 181
    return-object p0
.end method

.method public blacklist setWritable(Z)Landroid/bluetooth/BluetoothHapPresetInfo$Builder;
    .locals 0
    .param p1, "isWritable"    # Z

    .line 169
    iput-boolean p1, p0, Landroid/bluetooth/BluetoothHapPresetInfo$Builder;->mIsWritable:Z

    .line 170
    return-object p0
.end method
