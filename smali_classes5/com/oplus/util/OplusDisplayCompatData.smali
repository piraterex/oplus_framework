.class public final Lcom/oplus/util/OplusDisplayCompatData;
.super Ljava/lang/Object;
.source "OplusDisplayCompatData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/util/OplusDisplayCompatData;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DBG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "OplusDisplayCompatData"

.field public static final blacklist TYPE_FIRST:I = 0x0

.field public static final whitelist TYPE_INSTALLED_COMPAT_LIST:I = 0x7

.field public static final whitelist TYPE_INSTALLED_IME_LIST:I = 0x8

.field public static final whitelist TYPE_INSTALLED_THIRD_PARTY_APP_LIST:I = 0xc

.field public static final blacklist TYPE_LAST:I = 0x12

.field public static final whitelist TYPE_LOCAL_COMPAT_LIST:I = 0x2

.field public static final whitelist TYPE_LOCAL_CUTOUT_DEFAULT_LIST:I = 0x4

.field public static final whitelist TYPE_LOCAL_CUTOUT_HIDE_LIST:I = 0x6

.field public static final whitelist TYPE_LOCAL_CUTOUT_SHOW_LIST:I = 0x5

.field public static final whitelist TYPE_LOCAL_FULL_SCREEN_LIST:I = 0x3

.field public static final whitelist TYPE_RUS_COMPAT_LIST:I = 0x0

.field public static final blacklist TYPE_RUS_FOLD_SCREEN_AUTO_MATCH_LIST:I = 0x12

.field public static final whitelist TYPE_RUS_FOLD_SCREEN_FORCE_AUTO_MATCH_LIST:I = 0xe

.field public static final whitelist TYPE_RUS_FOLD_SCREEN_FORCE_NON_HIDE_CUTOUT_LIST:I = 0xf

.field public static final whitelist TYPE_RUS_FOLD_SCREEN_IMMERSIVE_LIST:I = 0x10

.field public static final whitelist TYPE_RUS_FOLD_SCREEN_NON_FORCE_IMMERSIVE_LIST:I = 0xd

.field public static final whitelist TYPE_RUS_FOLD_SCREEN_NON_IMMERSIVE_LIST:I = 0x11

.field public static final whitelist TYPE_RUS_IMMERSIVE_LIST:I = 0xa

.field public static final whitelist TYPE_RUS_NON_IMMERSIVE_LIST:I = 0xb

.field public static final whitelist TYPE_RUS_NO_COMPAT_LIST:I = 0x1

.field public static final whitelist TYPE_SHOW_DIALOG_APPS_LIST:I = 0x9


# instance fields
.field private blacklist mDisplayCutoutType:I

.field private blacklist mEnableDisplayCompat:Z

.field private blacklist mHasHeteromorphismFeature:Z

.field private blacklist mLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mRusImmersiveDefault:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 180
    new-instance v0, Lcom/oplus/util/OplusDisplayCompatData$1;

    invoke-direct {v0}, Lcom/oplus/util/OplusDisplayCompatData$1;-><init>()V

    sput-object v0, Lcom/oplus/util/OplusDisplayCompatData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mLists:Landroid/util/SparseArray;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mEnableDisplayCompat:Z

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mHasHeteromorphismFeature:Z

    .line 201
    iput-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mRusImmersiveDefault:Z

    .line 202
    iput v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mDisplayCutoutType:I

    .line 208
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mLists:Landroid/util/SparseArray;

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mEnableDisplayCompat:Z

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mHasHeteromorphismFeature:Z

    .line 201
    iput-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mRusImmersiveDefault:Z

    .line 202
    iput v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mDisplayCutoutType:I

    .line 211
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatData;->readFromParcel(Landroid/os/Parcel;)V

    .line 212
    return-void
.end method

.method public static blacklist checkTypeInvalid(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 475
    if-ltz p0, :cond_1

    const/16 v0, 0x12

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist flattenList(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 246
    .local p1, "list":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 247
    .local v0, "fl":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 248
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    const-string v4, ","

    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private blacklist unFlattenList(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 254
    .local p1, "fl":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 255
    .local v0, "list":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 256
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBlackList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 304
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusDisplayCompatData;->getList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCompatPackageList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public whitelist getDisplayCompatEnabled()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mEnableDisplayCompat:Z

    return v0
.end method

.method public whitelist getDisplayCutoutType()I
    .locals 1

    .line 407
    iget v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mDisplayCutoutType:I

    return v0
.end method

.method public whitelist getInstalledCompatList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 344
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusDisplayCompatData;->getList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInstalledImeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 352
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusDisplayCompatData;->getList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInstalledThirdPartyAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 392
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusDisplayCompatData;->getList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getList(I)Ljava/util/List;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 445
    invoke-static {p1}, Lcom/oplus/util/OplusDisplayCompatData;->checkTypeInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getList: invalid type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusDisplayCompatData"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 450
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 451
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 452
    iget-object v1, p0, Lcom/oplus/util/OplusDisplayCompatData;->mLists:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    :cond_1
    return-object v0
.end method

.method public whitelist getLocalCompatList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 312
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusDisplayCompatData;->getList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocalCutoutDefaultList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 420
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusDisplayCompatData;->getList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocalCutoutHideList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 438
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusDisplayCompatData;->getList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocalCutoutShowList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 429
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusDisplayCompatData;->getList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocalFullScreenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 320
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusDisplayCompatData;->getList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocalImmersiveList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 336
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusDisplayCompatData;->getList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocalNonImmersiveList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 328
    invoke-virtual {p0}, Lcom/oplus/util/OplusDisplayCompatData;->getLocalCutoutDefaultList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNeedAdjustSizeAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getRusImmersiveDefault()Z
    .locals 1

    .line 368
    iget-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mRusImmersiveDefault:Z

    return v0
.end method

.method public whitelist getRusImmersiveList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 376
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusDisplayCompatData;->getList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRusNonImmersiveList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 384
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusDisplayCompatData;->getList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getShowDialogAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 360
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusDisplayCompatData;->getList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWhiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/util/OplusDisplayCompatData;->getList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasHeteromorphismFeature()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mHasHeteromorphismFeature:Z

    return v0
.end method

.method public blacklist putList(ILjava/util/List;)V
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 461
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/oplus/util/OplusDisplayCompatData;->checkTypeInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putList: invalid type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusDisplayCompatData"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void

    .line 465
    :cond_0
    if-nez p2, :cond_1

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p2, v0

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    return-void
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 238
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/util/OplusDisplayCompatData;->unFlattenList(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mLists:Landroid/util/SparseArray;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mEnableDisplayCompat:Z

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mHasHeteromorphismFeature:Z

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/oplus/util/OplusDisplayCompatData;->mRusImmersiveDefault:Z

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mDisplayCutoutType:I

    .line 243
    return-void
.end method

.method public whitelist setBlackList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 308
    .local p1, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 309
    return-void
.end method

.method public whitelist setCompatPackageList(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 277
    .local p1, "compatPackageList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public whitelist setDisplatOptEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 284
    iput-boolean p1, p0, Lcom/oplus/util/OplusDisplayCompatData;->mEnableDisplayCompat:Z

    .line 285
    return-void
.end method

.method public whitelist setDisplayCutoutType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 411
    iput p1, p0, Lcom/oplus/util/OplusDisplayCompatData;->mDisplayCutoutType:I

    .line 412
    return-void
.end method

.method public whitelist setHasHeteromorphismFeature(Z)V
    .locals 0
    .param p1, "hasFeature"    # Z

    .line 292
    iput-boolean p1, p0, Lcom/oplus/util/OplusDisplayCompatData;->mHasHeteromorphismFeature:Z

    .line 293
    return-void
.end method

.method public whitelist setInstalledCompatList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 348
    .local p1, "installedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 349
    return-void
.end method

.method public whitelist setInstalledImeList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 356
    .local p1, "imeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 357
    return-void
.end method

.method public whitelist setInstalledThirdPartyAppList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 396
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 397
    return-void
.end method

.method public whitelist setLocalCompatList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 316
    .local p1, "localList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 317
    return-void
.end method

.method public whitelist setLocalCutoutDefaultList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 415
    .local p1, "localList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 416
    return-void
.end method

.method public whitelist setLocalCutoutHideList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 433
    .local p1, "localList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 434
    return-void
.end method

.method public whitelist setLocalCutoutShowList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 424
    .local p1, "localList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 425
    return-void
.end method

.method public whitelist setLocalFullScreenList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 324
    .local p1, "localList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 325
    return-void
.end method

.method public whitelist setLocalImmersiveList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 340
    .local p1, "localList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 341
    return-void
.end method

.method public whitelist setLocalNonImmersiveList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 332
    .local p1, "localList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/oplus/util/OplusDisplayCompatData;->setLocalCutoutDefaultList(Ljava/util/List;)V

    .line 333
    return-void
.end method

.method public whitelist setNeedAdjustSizeAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 404
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public whitelist setRusImmersiveDefault(Z)V
    .locals 0
    .param p1, "defaultValue"    # Z

    .line 372
    iput-boolean p1, p0, Lcom/oplus/util/OplusDisplayCompatData;->mRusImmersiveDefault:Z

    .line 373
    return-void
.end method

.method public whitelist setRusImmersiveList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 380
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 381
    return-void
.end method

.method public whitelist setRusNonImmersiveList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 388
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 389
    return-void
.end method

.method public whitelist setShowDialogAppList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 364
    .local p1, "localList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 365
    return-void
.end method

.method public whitelist setWhiteList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 300
    .local p1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/oplus/util/OplusDisplayCompatData;->putList(ILjava/util/List;)V

    .line 301
    return-void
.end method

.method public whitelist updateFrom(Lcom/oplus/util/OplusDisplayCompatData;)Lcom/oplus/util/OplusDisplayCompatData;
    .locals 1
    .param p1, "data"    # Lcom/oplus/util/OplusDisplayCompatData;

    .line 262
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/oplus/util/OplusDisplayCompatData;->mLists:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mLists:Landroid/util/SparseArray;

    .line 266
    iget-boolean v0, p1, Lcom/oplus/util/OplusDisplayCompatData;->mEnableDisplayCompat:Z

    iput-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mEnableDisplayCompat:Z

    .line 267
    iget-boolean v0, p1, Lcom/oplus/util/OplusDisplayCompatData;->mHasHeteromorphismFeature:Z

    iput-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mHasHeteromorphismFeature:Z

    .line 268
    iget-boolean v0, p1, Lcom/oplus/util/OplusDisplayCompatData;->mRusImmersiveDefault:Z

    iput-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mRusImmersiveDefault:Z

    .line 269
    return-object p0

    .line 263
    :cond_1
    :goto_0
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 224
    iget-object v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mLists:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/oplus/util/OplusDisplayCompatData;->flattenList(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 225
    iget-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mEnableDisplayCompat:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 226
    iget-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mHasHeteromorphismFeature:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 227
    iget-boolean v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mRusImmersiveDefault:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 228
    iget v0, p0, Lcom/oplus/util/OplusDisplayCompatData;->mDisplayCutoutType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    return-void
.end method
