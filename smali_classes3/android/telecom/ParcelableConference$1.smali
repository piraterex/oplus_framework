.class Landroid/telecom/ParcelableConference$1;
.super Ljava/lang/Object;
.source "ParcelableConference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableConference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/ParcelableConference;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConference;
    .locals 44
    .param p1, "source"    # Landroid/os/Parcel;

    .line 294
    move-object/from16 v0, p1

    const-class v1, Landroid/telecom/ParcelableConference;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 295
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-class v2, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 296
    .local v2, "phoneAccount":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 297
    .local v25, "state":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 298
    .local v26, "capabilities":I
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v15, v3

    .line 299
    .local v15, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v15, v1, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 300
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v27

    .line 301
    .local v27, "connectTimeMillis":J
    nop

    .line 302
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v29

    .line 303
    .local v29, "videoCallProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 304
    .local v30, "videoState":I
    const-class v3, Landroid/telecom/StatusHints;

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Landroid/telecom/StatusHints;

    .line 305
    .local v31, "statusHints":Landroid/telecom/StatusHints;
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v32

    .line 306
    .local v32, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 307
    .local v33, "properties":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v34

    .line 308
    .local v34, "connectElapsedTimeMillis":J
    const-class v3, Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v36, v3

    check-cast v36, Landroid/net/Uri;

    .line 309
    .local v36, "address":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 310
    .local v37, "addressPresentation":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v38

    .line 311
    .local v38, "callerDisplayName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 312
    .local v39, "callerDisplayNamePresentation":I
    const-class v3, Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v40, v3

    check-cast v40, Landroid/telecom/DisconnectCause;

    .line 313
    .local v40, "disconnectCause":Landroid/telecom/DisconnectCause;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move/from16 v22, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move/from16 v22, v3

    .line 314
    .local v22, "isRingbackRequested":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .local v41, "callDirection":I
    move/from16 v23, v41

    .line 316
    new-instance v42, Landroid/telecom/ParcelableConference;

    move-object/from16 v3, v42

    const/16 v24, 0x0

    move-object v4, v2

    move/from16 v5, v25

    move/from16 v6, v26

    move/from16 v7, v33

    move-object v8, v15

    move-object/from16 v9, v29

    move/from16 v10, v30

    move-wide/from16 v11, v27

    move-wide/from16 v13, v34

    move-object/from16 v43, v15

    .end local v15    # "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v43, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v15, v31

    move-object/from16 v16, v32

    move-object/from16 v17, v36

    move/from16 v18, v37

    move-object/from16 v19, v38

    move/from16 v20, v39

    move-object/from16 v21, v40

    invoke-direct/range {v3 .. v24}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IIILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJJLandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/DisconnectCause;ZILandroid/telecom/ParcelableConference-IA;)V

    return-object v42
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 291
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConference$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableConference;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telecom/ParcelableConference;
    .locals 1
    .param p1, "size"    # I

    .line 325
    new-array v0, p1, [Landroid/telecom/ParcelableConference;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 291
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableConference$1;->newArray(I)[Landroid/telecom/ParcelableConference;

    move-result-object p1

    return-object p1
.end method
