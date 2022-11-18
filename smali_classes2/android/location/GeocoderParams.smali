.class public Landroid/location/GeocoderParams;
.super Ljava/lang/Object;
.source "GeocoderParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GeocoderParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final greylist-max-o mLocale:Ljava/util/Locale;

.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Landroid/location/GeocoderParams$1;

    invoke-direct {v0}, Landroid/location/GeocoderParams$1;-><init>()V

    sput-object v0, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "locale"    # Ljava/util/Locale;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Landroid/location/GeocoderParams;->mUid:I

    .line 57
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/location/GeocoderParams;->mPackageName:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Landroid/location/GeocoderParams;->mAttributionTag:Ljava/lang/String;

    .line 59
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/location/GeocoderParams;->mLocale:Ljava/util/Locale;

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Locale;Landroid/location/GeocoderParams-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/location/GeocoderParams;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/location/GeocoderParams;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 49
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 52
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p2}, Landroid/location/GeocoderParams;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getClientAttributionTag()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Landroid/location/GeocoderParams;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getClientPackage()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Landroid/location/GeocoderParams;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getClientUid()I
    .locals 1

    .line 67
    iget v0, p0, Landroid/location/GeocoderParams;->mUid:I

    return v0
.end method

.method public greylist getLocale()Ljava/util/Locale;
    .locals 1

    .line 91
    iget-object v0, p0, Landroid/location/GeocoderParams;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 118
    iget v0, p0, Landroid/location/GeocoderParams;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-object v0, p0, Landroid/location/GeocoderParams;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Landroid/location/GeocoderParams;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Landroid/location/GeocoderParams;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Landroid/location/GeocoderParams;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Landroid/location/GeocoderParams;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 124
    return-void
.end method
