.class public final Landroid/app/cloudsearch/SearchResponse;
.super Ljava/lang/Object;
.source "SearchResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/cloudsearch/SearchResponse$Builder;,
        Landroid/app/cloudsearch/SearchResponse$SearchStatusCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/cloudsearch/SearchResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SEARCH_STATUS_NO_INTERNET:I = 0x2

.field public static final whitelist SEARCH_STATUS_OK:I = 0x0

.field public static final whitelist SEARCH_STATUS_TIME_OUT:I = 0x1

.field public static final whitelist SEARCH_STATUS_UNKNOWN:I = -0x1


# instance fields
.field private final blacklist mSearchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/cloudsearch/SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSource:Ljava/lang/String;

.field private final blacklist mStatusCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Landroid/app/cloudsearch/SearchResponse$1;

    invoke-direct {v0}, Landroid/app/cloudsearch/SearchResponse$1;-><init>()V

    sput-object v0, Landroid/app/cloudsearch/SearchResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/cloudsearch/SearchResult;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p3, "searchResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/cloudsearch/SearchResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Landroid/app/cloudsearch/SearchResponse;->mStatusCode:I

    .line 67
    iput-object p2, p0, Landroid/app/cloudsearch/SearchResponse;->mSource:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Landroid/app/cloudsearch/SearchResponse;->mSearchResults:Ljava/util/List;

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/util/List;Landroid/app/cloudsearch/SearchResponse-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/cloudsearch/SearchResponse;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/cloudsearch/SearchResponse$Builder;)V
    .locals 1
    .param p1, "b"    # Landroid/app/cloudsearch/SearchResponse$Builder;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p1}, Landroid/app/cloudsearch/SearchResponse$Builder;->-$$Nest$fgetmStatusCode(Landroid/app/cloudsearch/SearchResponse$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/cloudsearch/SearchResponse;->mStatusCode:I

    .line 98
    invoke-static {p1}, Landroid/app/cloudsearch/SearchResponse$Builder;->-$$Nest$fgetmSource(Landroid/app/cloudsearch/SearchResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResponse;->mSource:Ljava/lang/String;

    .line 99
    invoke-static {p1}, Landroid/app/cloudsearch/SearchResponse$Builder;->-$$Nest$fgetmSearchResults(Landroid/app/cloudsearch/SearchResponse$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResponse;->mSearchResults:Ljava/util/List;

    .line 100
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/cloudsearch/SearchResponse;->mStatusCode:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResponse;->mSource:Ljava/lang/String;

    .line 61
    sget-object v0, Landroid/app/cloudsearch/SearchResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResponse;->mSearchResults:Ljava/util/List;

    .line 62
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/cloudsearch/SearchResponse-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/cloudsearch/SearchResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 133
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 134
    return v0

    .line 137
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 141
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/cloudsearch/SearchResponse;

    .line 142
    .local v2, "that":Landroid/app/cloudsearch/SearchResponse;
    iget v3, p0, Landroid/app/cloudsearch/SearchResponse;->mStatusCode:I

    iget v4, v2, Landroid/app/cloudsearch/SearchResponse;->mStatusCode:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/cloudsearch/SearchResponse;->mSource:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/cloudsearch/SearchResponse;->mSource:Ljava/lang/String;

    .line 143
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/cloudsearch/SearchResponse;->mSearchResults:Ljava/util/List;

    iget-object v4, v2, Landroid/app/cloudsearch/SearchResponse;->mSearchResults:Ljava/util/List;

    .line 144
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 142
    :goto_0
    return v0

    .line 138
    .end local v2    # "that":Landroid/app/cloudsearch/SearchResponse;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getSearchResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/cloudsearch/SearchResult;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Landroid/app/cloudsearch/SearchResponse;->mSearchResults:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSource()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Landroid/app/cloudsearch/SearchResponse;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStatusCode()I
    .locals 1

    .line 73
    iget v0, p0, Landroid/app/cloudsearch/SearchResponse;->mStatusCode:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 149
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/app/cloudsearch/SearchResponse;->mStatusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/cloudsearch/SearchResponse;->mSource:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/app/cloudsearch/SearchResponse;->mSearchResults:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .line 93
    iput-object p1, p0, Landroid/app/cloudsearch/SearchResponse;->mSource:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 121
    iget v0, p0, Landroid/app/cloudsearch/SearchResponse;->mStatusCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v0, p0, Landroid/app/cloudsearch/SearchResponse;->mSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Landroid/app/cloudsearch/SearchResponse;->mSearchResults:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 124
    return-void
.end method
