.class public final Landroid/app/slice/SliceSpec;
.super Ljava/lang/Object;
.source "SliceSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/slice/SliceSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mRevision:I

.field private final greylist-max-o mType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Landroid/app/slice/SliceSpec$1;

    invoke-direct {v0}, Landroid/app/slice/SliceSpec$1;-><init>()V

    sput-object v0, Landroid/app/slice/SliceSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    .line 58
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "revision"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    .line 49
    iput p2, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist canRender(Landroid/app/slice/SliceSpec;)Z
    .locals 3
    .param p1, "candidate"    # Landroid/app/slice/SliceSpec;

    .line 96
    iget-object v0, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    iget-object v1, p1, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 97
    :cond_0
    iget v0, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    iget v2, p1, Landroid/app/slice/SliceSpec;->mRevision:I

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 102
    instance-of v0, p1, Landroid/app/slice/SliceSpec;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 103
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/slice/SliceSpec;

    .line 104
    .local v0, "other":Landroid/app/slice/SliceSpec;
    iget-object v2, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    iget v3, v0, Landroid/app/slice/SliceSpec;->mRevision:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist getRevision()I
    .locals 1

    .line 82
    iget v0, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    return v0
.end method

.method public whitelist getType()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "SliceSpec{%s,%d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 67
    iget-object v0, p0, Landroid/app/slice/SliceSpec;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget v0, p0, Landroid/app/slice/SliceSpec;->mRevision:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return-void
.end method
