.class public final Landroid/webkit/WebViewProviderResponse;
.super Ljava/lang/Object;
.source "WebViewProviderResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/webkit/WebViewProviderResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist packageInfo:Landroid/content/pm/PackageInfo;

.field public final greylist-max-o status:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Landroid/webkit/WebViewProviderResponse$1;

    invoke-direct {v0}, Landroid/webkit/WebViewProviderResponse$1;-><init>()V

    sput-object v0, Landroid/webkit/WebViewProviderResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageInfo;I)V
    .locals 0
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "status"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 31
    iput p2, p0, Landroid/webkit/WebViewProviderResponse;->status:I

    .line 32
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/webkit/WebViewProviderResponse;->status:I

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/webkit/WebViewProviderResponse-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/WebViewProviderResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 58
    iget-object v0, p0, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 59
    iget v0, p0, Landroid/webkit/WebViewProviderResponse;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return-void
.end method
