.class public final Landroid/bluetooth/BufferConstraint;
.super Ljava/lang/Object;
.source "BufferConstraint.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BufferConstraint;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "BufferConstraint"


# instance fields
.field private blacklist mDefaultMillis:I

.field private blacklist mMaxMillis:I

.field private blacklist mMinMillis:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Landroid/bluetooth/BufferConstraint$1;

    invoke-direct {v0}, Landroid/bluetooth/BufferConstraint$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BufferConstraint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 0
    .param p1, "defaultMillis"    # I
    .param p2, "maxMillis"    # I
    .param p3, "minMillis"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/bluetooth/BufferConstraint;->mDefaultMillis:I

    .line 40
    iput p2, p0, Landroid/bluetooth/BufferConstraint;->mMaxMillis:I

    .line 41
    iput p3, p0, Landroid/bluetooth/BufferConstraint;->mMinMillis:I

    .line 42
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BufferConstraint;->mDefaultMillis:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BufferConstraint;->mMaxMillis:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BufferConstraint;->mMinMillis:I

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDefaultMillis()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 81
    iget v0, p0, Landroid/bluetooth/BufferConstraint;->mDefaultMillis:I

    return v0
.end method

.method public whitelist getMaxMillis()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 92
    iget v0, p0, Landroid/bluetooth/BufferConstraint;->mMaxMillis:I

    return v0
.end method

.method public whitelist getMinMillis()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 103
    iget v0, p0, Landroid/bluetooth/BufferConstraint;->mMinMillis:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 63
    iget v0, p0, Landroid/bluetooth/BufferConstraint;->mDefaultMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Landroid/bluetooth/BufferConstraint;->mMaxMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Landroid/bluetooth/BufferConstraint;->mMinMillis:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return-void
.end method
