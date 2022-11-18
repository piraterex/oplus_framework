.class public Lcom/oplus/darkmode/OplusDarkModeData;
.super Ljava/lang/Object;
.source "OplusDarkModeData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/darkmode/OplusDarkModeData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist mAlreadyClickByUser:Z

.field public whitelist mCurType:I

.field public whitelist mIsRecommend:I

.field public whitelist mOldType:I

.field public whitelist mOpenByUser:Z

.field public whitelist mVersionCode:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/oplus/darkmode/OplusDarkModeData$1;

    invoke-direct {v0}, Lcom/oplus/darkmode/OplusDarkModeData$1;-><init>()V

    sput-object v0, Lcom/oplus/darkmode/OplusDarkModeData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mVersionCode:J

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mIsRecommend:I

    .line 9
    iput v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mOldType:I

    .line 10
    iput v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mCurType:I

    .line 11
    iput-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mOpenByUser:Z

    .line 12
    iput-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mAlreadyClickByUser:Z

    .line 15
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mVersionCode:J

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mIsRecommend:I

    .line 9
    iput v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mOldType:I

    .line 10
    iput v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mCurType:I

    .line 11
    iput-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mOpenByUser:Z

    .line 12
    iput-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mAlreadyClickByUser:Z

    .line 18
    invoke-virtual {p0, p1}, Lcom/oplus/darkmode/OplusDarkModeData;->readFromParcel(Landroid/os/Parcel;)V

    .line 19
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/oplus/darkmode/OplusDarkModeData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/darkmode/OplusDarkModeData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mVersionCode:J

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mIsRecommend:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mOldType:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mCurType:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mOpenByUser:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mAlreadyClickByUser:Z

    .line 38
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 23
    iget-wide v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mVersionCode:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    iget v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mIsRecommend:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    iget v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mOldType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mCurType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mOpenByUser:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 28
    iget-boolean v0, p0, Lcom/oplus/darkmode/OplusDarkModeData;->mAlreadyClickByUser:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 29
    return-void
.end method
