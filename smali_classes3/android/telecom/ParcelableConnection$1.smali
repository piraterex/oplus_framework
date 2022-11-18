.class Landroid/telecom/ParcelableConnection$1;
.super Ljava/lang/Object;
.source "ParcelableConnection.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/ParcelableConnection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConnection;
    .locals 50
    .param p1, "source"    # Landroid/os/Parcel;

    .line 262
    move-object/from16 v0, p1

    const-class v1, Landroid/telecom/ParcelableConnection;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 264
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-class v2, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 265
    .local v2, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 266
    .local v28, "state":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 267
    .local v29, "capabilities":I
    const-class v3, Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Landroid/net/Uri;

    .line 268
    .local v30, "address":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 269
    .local v31, "addressPresentation":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 270
    .local v32, "callerDisplayName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 271
    .local v33, "callerDisplayNamePresentation":I
    nop

    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v34

    .line 273
    .local v34, "videoCallProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v35

    .line 274
    .local v35, "videoState":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v15, v5

    goto :goto_0

    :cond_0
    move v15, v4

    .line 275
    .local v15, "ringbackRequested":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v5, :cond_1

    move/from16 v16, v5

    goto :goto_1

    :cond_1
    move/from16 v16, v4

    .line 276
    .local v16, "audioModeIsVoip":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v36

    .local v36, "connectTimeMillis":J
    move-wide/from16 v17, v36

    .line 277
    const-class v3, Landroid/telecom/StatusHints;

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v38, v3

    check-cast v38, Landroid/telecom/StatusHints;

    .local v38, "statusHints":Landroid/telecom/StatusHints;
    move-object/from16 v21, v38

    .line 278
    const-class v3, Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v39, v3

    check-cast v39, Landroid/telecom/DisconnectCause;

    .local v39, "disconnectCause":Landroid/telecom/DisconnectCause;
    move-object/from16 v22, v39

    .line 279
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v3

    .local v14, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v23, v14

    .line 280
    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 281
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3, v5}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v40

    .local v40, "extras":Landroid/os/Bundle;
    move-object/from16 v24, v40

    .line 282
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .local v41, "properties":I
    move/from16 v7, v41

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .local v42, "supportedAudioRoutes":I
    move/from16 v8, v42

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .local v43, "parentCallId":Ljava/lang/String;
    move-object/from16 v25, v43

    .line 285
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v44

    .local v44, "connectElapsedTimeMillis":J
    move-wide/from16 v19, v44

    .line 286
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .local v46, "callDirection":I
    move/from16 v26, v46

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .local v47, "callerNumberVerificationStatus":I
    move/from16 v27, v47

    .line 289
    new-instance v48, Landroid/telecom/ParcelableConnection;

    move-object/from16 v3, v48

    move-object v4, v2

    move/from16 v5, v28

    move/from16 v6, v29

    move-object/from16 v9, v30

    move/from16 v10, v31

    move-object/from16 v11, v32

    move/from16 v12, v33

    move-object/from16 v13, v34

    move-object/from16 v49, v14

    .end local v14    # "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v49, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move/from16 v14, v35

    invoke-direct/range {v3 .. v27}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;II)V

    return-object v48
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConnection$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConnection;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telecom/ParcelableConnection;
    .locals 1
    .param p1, "size"    # I

    .line 316
    new-array v0, p1, [Landroid/telecom/ParcelableConnection;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 259
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConnection$1;->newArray(I)[Landroid/telecom/ParcelableConnection;

    move-result-object p1

    return-object p1
.end method
