.class public abstract Landroid/util/OplusBaseMergedConfiguration;
.super Ljava/lang/Object;
.source "OplusBaseMergedConfiguration.java"


# instance fields
.field public blacklist mBackgroundMaxL:F

.field public blacklist mDialogBgMaxL:F

.field public blacklist mForegroundMinL:F

.field public blacklist mOplusDarkModeData:Landroid/os/Parcelable;

.field public blacklist mOplusForceDarkValue:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/util/OplusBaseMergedConfiguration;->mDialogBgMaxL:F

    .line 33
    iput v0, p0, Landroid/util/OplusBaseMergedConfiguration;->mBackgroundMaxL:F

    .line 34
    iput v0, p0, Landroid/util/OplusBaseMergedConfiguration;->mForegroundMinL:F

    return-void
.end method


# virtual methods
.method public blacklist readParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 43
    const-class v0, Landroid/util/OplusBaseMergedConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/util/OplusBaseMergedConfiguration;->mOplusDarkModeData:Landroid/os/Parcelable;

    .line 44
    return-void
.end method

.method public blacklist writeParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 38
    const-class v0, Lcom/oplus/darkmode/OplusDarkModeData;

    iget-object v1, p0, Landroid/util/OplusBaseMergedConfiguration;->mOplusDarkModeData:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/OplusDarkModeData;

    .line 39
    .local v0, "oplusDarkModeData":Lcom/oplus/darkmode/OplusDarkModeData;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 40
    return-void
.end method
