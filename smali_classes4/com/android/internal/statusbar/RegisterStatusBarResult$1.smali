.class Lcom/android/internal/statusbar/RegisterStatusBarResult$1;
.super Ljava/lang/Object;
.source "RegisterStatusBarResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/RegisterStatusBarResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/statusbar/RegisterStatusBarResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/statusbar/RegisterStatusBarResult;
    .locals 31
    .param p1, "source"    # Landroid/os/Parcel;

    .line 98
    move-object/from16 v0, p1

    sget-object v1, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 99
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayMap(Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 100
    .local v1, "icons":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 101
    .local v17, "disabledFlags1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 102
    .local v18, "appearance":I
    const-class v2, Lcom/android/internal/view/AppearanceRegion;

    .line 103
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, [Lcom/android/internal/view/AppearanceRegion;

    .line 104
    .local v19, "appearanceRegions":[Lcom/android/internal/view/AppearanceRegion;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 105
    .local v20, "imeWindowVis":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 106
    .local v21, "imeBackDisposition":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 107
    .local v22, "showImeSwitcher":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 108
    .local v23, "disabledFlags2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v24

    .line 109
    .local v24, "imeToken":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v25

    .line 110
    .local v25, "navbarColorManagedByIme":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 111
    .local v26, "behavior":I
    sget-object v2, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 112
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Landroid/view/InsetsVisibilities;

    .line 113
    .local v27, "requestedVisibilities":Landroid/view/InsetsVisibilities;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 114
    .local v28, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v29

    .line 115
    .local v29, "transientBarTypes":[I
    new-instance v30, Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-object/from16 v2, v30

    move-object v3, v1

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    move/from16 v8, v21

    move/from16 v9, v22

    move/from16 v10, v23

    move-object/from16 v11, v24

    move/from16 v12, v25

    move/from16 v13, v26

    move-object/from16 v14, v27

    move-object/from16 v15, v28

    move-object/from16 v16, v29

    invoke-direct/range {v2 .. v16}, Lcom/android/internal/statusbar/RegisterStatusBarResult;-><init>(Landroid/util/ArrayMap;II[Lcom/android/internal/view/AppearanceRegion;IIZILandroid/os/IBinder;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;[I)V

    return-object v30
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/RegisterStatusBarResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/statusbar/RegisterStatusBarResult;
    .locals 1
    .param p1, "size"    # I

    .line 123
    new-array v0, p1, [Lcom/android/internal/statusbar/RegisterStatusBarResult;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/RegisterStatusBarResult$1;->newArray(I)[Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-result-object p1

    return-object p1
.end method
