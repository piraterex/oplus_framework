.class Landroid/bluetooth/BluetoothLeAudioCodecConfig$1;
.super Ljava/lang/Object;
.source "BluetoothLeAudioCodecConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeAudioCodecConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .locals 37
    .param p1, "in"    # Landroid/os/Parcel;

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "codecType":I
    move/from16 v1, v19

    .line 288
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .local v20, "codecPriority":I
    move/from16 v2, v20

    .line 289
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .local v21, "sampleRate":I
    move/from16 v3, v21

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .local v22, "bitsPerSample":I
    move/from16 v4, v22

    .line 291
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .local v23, "channelCount":I
    move/from16 v5, v23

    .line 292
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .local v24, "frameDuration":I
    move/from16 v6, v24

    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .local v25, "octetsPerFrame":I
    move/from16 v7, v25

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .local v26, "minOctetsPerFrame":I
    move/from16 v8, v26

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .local v27, "maxOctetsPerFrame":I
    move/from16 v9, v27

    .line 296
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v28

    .local v28, "codecSpecific1":J
    move-wide/from16 v10, v28

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .local v30, "codecSpecific2":J
    move-wide/from16 v12, v30

    .line 298
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v32

    .local v32, "codecSpecific3":J
    move-wide/from16 v14, v32

    .line 299
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    .local v34, "codecSpecific4":J
    move-wide/from16 v16, v34

    .line 300
    new-instance v36, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    move-object/from16 v0, v36

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;-><init>(IIIIIIIIIJJJJLandroid/bluetooth/BluetoothLeAudioCodecConfig-IA;)V

    return-object v36
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 285
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    .locals 1
    .param p1, "size"    # I

    .line 307
    new-array v0, p1, [Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 285
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig$1;->newArray(I)[Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    move-result-object p1

    return-object p1
.end method
