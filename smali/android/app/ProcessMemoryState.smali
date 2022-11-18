.class public final Landroid/app/ProcessMemoryState;
.super Ljava/lang/Object;
.source "ProcessMemoryState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ProcessMemoryState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist hasForegroundServices:Z

.field public final greylist-max-o oomScore:I

.field public final blacklist pid:I

.field public final greylist-max-o processName:Ljava/lang/String;

.field public final greylist-max-o uid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Landroid/app/ProcessMemoryState$1;

    invoke-direct {v0}, Landroid/app/ProcessMemoryState$1;-><init>()V

    sput-object v0, Landroid/app/ProcessMemoryState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "oomScore"    # I
    .param p5, "hasForegroundServices"    # Z

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Landroid/app/ProcessMemoryState;->uid:I

    .line 36
    iput p2, p0, Landroid/app/ProcessMemoryState;->pid:I

    .line 37
    iput-object p3, p0, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    .line 38
    iput p4, p0, Landroid/app/ProcessMemoryState;->oomScore:I

    .line 39
    iput-boolean p5, p0, Landroid/app/ProcessMemoryState;->hasForegroundServices:Z

    .line 40
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProcessMemoryState;->uid:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProcessMemoryState;->pid:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ProcessMemoryState;->oomScore:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/app/ProcessMemoryState;->hasForegroundServices:Z

    .line 48
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ProcessMemoryState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ProcessMemoryState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 69
    iget v0, p0, Landroid/app/ProcessMemoryState;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Landroid/app/ProcessMemoryState;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Landroid/app/ProcessMemoryState;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget v0, p0, Landroid/app/ProcessMemoryState;->oomScore:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-boolean v0, p0, Landroid/app/ProcessMemoryState;->hasForegroundServices:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void
.end method
