.class public Landroid/content/pm/IncrementalStatesInfo;
.super Ljava/lang/Object;
.source "IncrementalStatesInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/IncrementalStatesInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mIsLoading:Z

.field private blacklist mProgress:F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Landroid/content/pm/IncrementalStatesInfo$1;

    invoke-direct {v0}, Landroid/content/pm/IncrementalStatesInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/IncrementalStatesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mIsLoading:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mProgress:F

    .line 38
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/IncrementalStatesInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/IncrementalStatesInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(ZF)V
    .locals 0
    .param p1, "isLoading"    # Z
    .param p2, "progress"    # F

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Landroid/content/pm/IncrementalStatesInfo;->mIsLoading:Z

    .line 32
    iput p2, p0, Landroid/content/pm/IncrementalStatesInfo;->mProgress:F

    .line 33
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getProgress()F
    .locals 1

    .line 45
    iget v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mProgress:F

    return v0
.end method

.method public blacklist isLoading()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mIsLoading:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 55
    iget-boolean v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mIsLoading:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 56
    iget v0, p0, Landroid/content/pm/IncrementalStatesInfo;->mProgress:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 57
    return-void
.end method
