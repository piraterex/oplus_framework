.class public abstract Landroid/media/tv/BroadcastInfoRequest;
.super Ljava/lang/Object;
.source "BroadcastInfoRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/BroadcastInfoRequest$RequestOption;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/BroadcastInfoRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_OPTION_AUTO_UPDATE:I = 0x1

.field public static final whitelist REQUEST_OPTION_REPEAT:I


# instance fields
.field private final blacklist mOption:I

.field private final blacklist mRequestId:I

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Landroid/media/tv/BroadcastInfoRequest$1;

    invoke-direct {v0}, Landroid/media/tv/BroadcastInfoRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/BroadcastInfoRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(III)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "requestId"    # I
    .param p3, "option"    # I

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Landroid/media/tv/BroadcastInfoRequest;->mType:I

    .line 93
    iput p2, p0, Landroid/media/tv/BroadcastInfoRequest;->mRequestId:I

    .line 94
    iput p3, p0, Landroid/media/tv/BroadcastInfoRequest;->mOption:I

    .line 95
    return-void
.end method

.method constructor blacklist <init>(ILandroid/os/Parcel;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "source"    # Landroid/os/Parcel;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Landroid/media/tv/BroadcastInfoRequest;->mType:I

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/BroadcastInfoRequest;->mRequestId:I

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/BroadcastInfoRequest;->mOption:I

    .line 101
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOption()I
    .locals 1

    .line 134
    iget v0, p0, Landroid/media/tv/BroadcastInfoRequest;->mOption:I

    return v0
.end method

.method public whitelist getRequestId()I
    .locals 1

    .line 123
    iget v0, p0, Landroid/media/tv/BroadcastInfoRequest;->mRequestId:I

    return v0
.end method

.method public whitelist getType()I
    .locals 1

    .line 112
    iget v0, p0, Landroid/media/tv/BroadcastInfoRequest;->mType:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 144
    iget v0, p0, Landroid/media/tv/BroadcastInfoRequest;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Landroid/media/tv/BroadcastInfoRequest;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget v0, p0, Landroid/media/tv/BroadcastInfoRequest;->mOption:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    return-void
.end method
