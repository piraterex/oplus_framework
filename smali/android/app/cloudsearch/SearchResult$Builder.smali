.class public final Landroid/app/cloudsearch/SearchResult$Builder;
.super Ljava/lang/Object;
.source "SearchResult.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/cloudsearch/SearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtraInfos:Landroid/os/Bundle;

.field private blacklist mScore:F

.field private blacklist mSnippet:Ljava/lang/String;

.field private blacklist mTitle:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExtraInfos(Landroid/app/cloudsearch/SearchResult$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mExtraInfos:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScore(Landroid/app/cloudsearch/SearchResult$Builder;)F
    .locals 0

    iget p0, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mScore:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSnippet(Landroid/app/cloudsearch/SearchResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mSnippet:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Landroid/app/cloudsearch/SearchResult$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "extraInfos"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mTitle:Ljava/lang/String;

    .line 266
    iput-object p2, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mExtraInfos:Landroid/os/Bundle;

    .line 268
    const-string v0, ""

    iput-object v0, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mSnippet:Ljava/lang/String;

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mScore:F

    .line 270
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/cloudsearch/SearchResult;
    .locals 7

    .line 303
    iget-object v0, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mExtraInfos:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mSnippet:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Landroid/app/cloudsearch/SearchResult;

    iget-object v2, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mTitle:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mSnippet:Ljava/lang/String;

    iget v4, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mScore:F

    iget-object v5, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mExtraInfos:Landroid/os/Bundle;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/app/cloudsearch/SearchResult;-><init>(Ljava/lang/String;Ljava/lang/String;FLandroid/os/Bundle;Landroid/app/cloudsearch/SearchResult-IA;)V

    return-object v0

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please make sure all required args are assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setExtraInfos(Landroid/os/Bundle;)Landroid/app/cloudsearch/SearchResult$Builder;
    .locals 0
    .param p1, "extraInfos"    # Landroid/os/Bundle;

    .line 296
    iput-object p1, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mExtraInfos:Landroid/os/Bundle;

    .line 297
    return-object p0
.end method

.method public whitelist setScore(F)Landroid/app/cloudsearch/SearchResult$Builder;
    .locals 0
    .param p1, "score"    # F

    .line 289
    iput p1, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mScore:F

    .line 290
    return-object p0
.end method

.method public whitelist setSnippet(Ljava/lang/String;)Landroid/app/cloudsearch/SearchResult$Builder;
    .locals 0
    .param p1, "snippet"    # Ljava/lang/String;

    .line 282
    iput-object p1, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mSnippet:Ljava/lang/String;

    .line 283
    return-object p0
.end method

.method public whitelist setTitle(Ljava/lang/String;)Landroid/app/cloudsearch/SearchResult$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 275
    iput-object p1, p0, Landroid/app/cloudsearch/SearchResult$Builder;->mTitle:Ljava/lang/String;

    .line 276
    return-object p0
.end method
