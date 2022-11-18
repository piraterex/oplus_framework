.class Landroid/media/midi/MidiDeviceInfo$1;
.super Ljava/lang/Object;
.source "MidiDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/midi/MidiDeviceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/midi/MidiDeviceInfo;
    .locals 20
    .param p1, "in"    # Landroid/os/Parcel;

    .line 468
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 469
    .local v10, "type":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 470
    .local v11, "id":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 471
    .local v12, "inputPortCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 472
    .local v13, "outputPortCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    .line 473
    .local v14, "inputPortNames":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v15

    .line 474
    .local v15, "outputPortNames":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v8, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v8, v0

    .line 475
    .local v8, "isPrivate":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 476
    .local v16, "defaultProtocol":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v17

    .line 477
    .local v17, "basicPropertiesIgnored":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v18

    .line 478
    .local v18, "properties":Landroid/os/Bundle;
    new-instance v19, Landroid/media/midi/MidiDeviceInfo;

    move-object/from16 v0, v19

    move v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v18

    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Landroid/media/midi/MidiDeviceInfo;-><init>(IIII[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;ZI)V

    return-object v19
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 465
    invoke-virtual {p0, p1}, Landroid/media/midi/MidiDeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/midi/MidiDeviceInfo;
    .locals 1
    .param p1, "size"    # I

    .line 484
    new-array v0, p1, [Landroid/media/midi/MidiDeviceInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 465
    invoke-virtual {p0, p1}, Landroid/media/midi/MidiDeviceInfo$1;->newArray(I)[Landroid/media/midi/MidiDeviceInfo;

    move-result-object p1

    return-object p1
.end method
