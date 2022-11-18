.class public final Landroid/media/tv/TableResponse;
.super Landroid/media/tv/BroadcastInfoResponse;
.source "TableResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TableResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist RESPONSE_TYPE:I = 0x2


# instance fields
.field private final blacklist mSize:I

.field private final blacklist mTableUri:Landroid/net/Uri;

.field private final blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Landroid/media/tv/TableResponse$1;

    invoke-direct {v0}, Landroid/media/tv/TableResponse$1;-><init>()V

    sput-object v0, Landroid/media/tv/TableResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIILandroid/net/Uri;II)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "sequence"    # I
    .param p3, "responseResult"    # I
    .param p4, "tableUri"    # Landroid/net/Uri;
    .param p5, "version"    # I
    .param p6, "size"    # I

    .line 56
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/tv/BroadcastInfoResponse;-><init>(IIII)V

    .line 57
    iput-object p4, p0, Landroid/media/tv/TableResponse;->mTableUri:Landroid/net/Uri;

    .line 58
    iput p5, p0, Landroid/media/tv/TableResponse;->mVersion:I

    .line 59
    iput p6, p0, Landroid/media/tv/TableResponse;->mSize:I

    .line 60
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 63
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoResponse;-><init>(ILandroid/os/Parcel;)V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "uriString":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroid/media/tv/TableResponse;->mTableUri:Landroid/net/Uri;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/tv/TableResponse;->mVersion:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/media/tv/TableResponse;->mSize:I

    .line 68
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TableResponse;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .line 51
    new-instance v0, Landroid/media/tv/TableResponse;

    invoke-direct {v0, p0}, Landroid/media/tv/TableResponse;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSize()I
    .locals 1

    .line 94
    iget v0, p0, Landroid/media/tv/TableResponse;->mSize:I

    return v0
.end method

.method public whitelist getTableUri()Landroid/net/Uri;
    .locals 1

    .line 75
    iget-object v0, p0, Landroid/media/tv/TableResponse;->mTableUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getVersion()I
    .locals 1

    .line 87
    iget v0, p0, Landroid/media/tv/TableResponse;->mVersion:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 104
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 105
    iget-object v0, p0, Landroid/media/tv/TableResponse;->mTableUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "uriString":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget v1, p0, Landroid/media/tv/TableResponse;->mVersion:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v1, p0, Landroid/media/tv/TableResponse;->mSize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return-void
.end method
