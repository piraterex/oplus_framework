.class public final Landroid/app/cloudsearch/SearchResponse$Builder;
.super Ljava/lang/Object;
.source "SearchResponse.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/cloudsearch/SearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mSearchResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/cloudsearch/SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSource:Ljava/lang/String;

.field private blacklist mStatusCode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSearchResults(Landroid/app/cloudsearch/SearchResponse$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mSearchResults:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSource(Landroid/app/cloudsearch/SearchResponse$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mSource:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatusCode(Landroid/app/cloudsearch/SearchResponse$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mStatusCode:I

    return p0
.end method

.method public constructor whitelist <init>(I)V
    .locals 1
    .param p1, "statusCode"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput p1, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mStatusCode:I

    .line 174
    const-string v0, "DEFAULT"

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mSource:Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mSearchResults:Ljava/util/List;

    .line 177
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/cloudsearch/SearchResponse;
    .locals 5

    .line 206
    iget v0, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mStatusCode:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mSearchResults:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Landroid/app/cloudsearch/SearchResponse;

    iget v1, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mStatusCode:I

    iget-object v2, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mSource:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mSearchResults:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/cloudsearch/SearchResponse;-><init>(ILjava/lang/String;Ljava/util/List;Landroid/app/cloudsearch/SearchResponse-IA;)V

    return-object v0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please make sure all @NonNull args are assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSearchResults(Ljava/util/List;)Landroid/app/cloudsearch/SearchResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/cloudsearch/SearchResult;",
            ">;)",
            "Landroid/app/cloudsearch/SearchResponse$Builder;"
        }
    .end annotation

    .line 199
    .local p1, "searchResults":Ljava/util/List;, "Ljava/util/List<Landroid/app/cloudsearch/SearchResult;>;"
    iput-object p1, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mSearchResults:Ljava/util/List;

    .line 200
    return-object p0
.end method

.method public blacklist setSource(Ljava/lang/String;)Landroid/app/cloudsearch/SearchResponse$Builder;
    .locals 0
    .param p1, "source"    # Ljava/lang/String;

    .line 192
    iput-object p1, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mSource:Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public whitelist setStatusCode(I)Landroid/app/cloudsearch/SearchResponse$Builder;
    .locals 0
    .param p1, "statusCode"    # I

    .line 182
    iput p1, p0, Landroid/app/cloudsearch/SearchResponse$Builder;->mStatusCode:I

    .line 183
    return-object p0
.end method
