.class public final Landroid/media/tv/TableRequest;
.super Landroid/media/tv/BroadcastInfoRequest;
.source "TableRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TableRequest$TableName;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TableRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist REQUEST_TYPE:I = 0x2

.field public static final whitelist TABLE_NAME_PAT:I = 0x0

.field public static final whitelist TABLE_NAME_PMT:I = 0x1


# instance fields
.field private final blacklist mTableId:I

.field private final blacklist mTableName:I

.field private final blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Landroid/media/tv/TableRequest$1;

    invoke-direct {v0}, Landroid/media/tv/TableRequest$1;-><init>()V

    sput-object v0, Landroid/media/tv/TableRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIIII)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "option"    # I
    .param p3, "tableId"    # I
    .param p4, "tableName"    # I
    .param p5, "version"    # I

    .line 66
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;-><init>(III)V

    .line 67
    iput p3, p0, Landroid/media/tv/TableRequest;->mTableId:I

    .line 68
    iput p4, p0, Landroid/media/tv/TableRequest;->mTableName:I

    .line 69
    iput p5, p0, Landroid/media/tv/TableRequest;->mVersion:I

    .line 70
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 73
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/tv/BroadcastInfoRequest;-><init>(ILandroid/os/Parcel;)V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TableRequest;->mTableId:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TableRequest;->mTableName:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TableRequest;->mVersion:I

    .line 77
    return-void
.end method

.method static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/TableRequest;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .line 61
    new-instance v0, Landroid/media/tv/TableRequest;

    invoke-direct {v0, p0}, Landroid/media/tv/TableRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTableId()I
    .locals 1

    .line 83
    iget v0, p0, Landroid/media/tv/TableRequest;->mTableId:I

    return v0
.end method

.method public whitelist getTableName()I
    .locals 1

    .line 90
    iget v0, p0, Landroid/media/tv/TableRequest;->mTableName:I

    return v0
.end method

.method public whitelist getVersion()I
    .locals 1

    .line 102
    iget v0, p0, Landroid/media/tv/TableRequest;->mVersion:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 112
    invoke-super {p0, p1, p2}, Landroid/media/tv/BroadcastInfoRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 113
    iget v0, p0, Landroid/media/tv/TableRequest;->mTableId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Landroid/media/tv/TableRequest;->mTableName:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Landroid/media/tv/TableRequest;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return-void
.end method
