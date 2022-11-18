.class public final Landroid/app/cloudsearch/SearchRequest$Builder;
.super Ljava/lang/Object;
.source "SearchRequest.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/cloudsearch/SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCallerPackageName:Ljava/lang/String;

.field private blacklist mMaxLatencyMillis:F

.field private blacklist mQuery:Ljava/lang/String;

.field private blacklist mResultNumber:I

.field private blacklist mResultOffset:I

.field private blacklist mSearchConstraints:Landroid/os/Bundle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallerPackageName(Landroid/app/cloudsearch/SearchRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mCallerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxLatencyMillis(Landroid/app/cloudsearch/SearchRequest$Builder;)F
    .locals 0

    iget p0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mMaxLatencyMillis:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQuery(Landroid/app/cloudsearch/SearchRequest$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mQuery:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResultNumber(Landroid/app/cloudsearch/SearchRequest$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultNumber:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResultOffset(Landroid/app/cloudsearch/SearchRequest$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultOffset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSearchConstraints(Landroid/app/cloudsearch/SearchRequest$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mSearchConstraints:Landroid/os/Bundle;

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mQuery:Ljava/lang/String;

    .line 284
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultOffset:I

    .line 285
    const/16 v0, 0xa

    iput v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultNumber:I

    .line 286
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mMaxLatencyMillis:F

    .line 287
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mSearchConstraints:Landroid/os/Bundle;

    .line 288
    const-string v0, "DEFAULT_CALLER"

    iput-object v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mCallerPackageName:Ljava/lang/String;

    .line 289
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/cloudsearch/SearchRequest;
    .locals 9

    .line 341
    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultOffset:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultNumber:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mMaxLatencyMillis:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mSearchConstraints:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 346
    new-instance v0, Landroid/app/cloudsearch/SearchRequest;

    iget-object v2, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mQuery:Ljava/lang/String;

    iget v3, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultOffset:I

    iget v4, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultNumber:I

    iget v5, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mMaxLatencyMillis:F

    iget-object v6, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mSearchConstraints:Landroid/os/Bundle;

    iget-object v7, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mCallerPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/app/cloudsearch/SearchRequest;-><init>(Ljava/lang/String;IIFLandroid/os/Bundle;Ljava/lang/String;Landroid/app/cloudsearch/SearchRequest-IA;)V

    return-object v0

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please make sure all required args are valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setCallerPackageName(Ljava/lang/String;)Landroid/app/cloudsearch/SearchRequest$Builder;
    .locals 0
    .param p1, "callerPackageName"    # Ljava/lang/String;

    .line 334
    iput-object p1, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mCallerPackageName:Ljava/lang/String;

    .line 335
    return-object p0
.end method

.method public whitelist setMaxLatencyMillis(F)Landroid/app/cloudsearch/SearchRequest$Builder;
    .locals 0
    .param p1, "maxLatencyMillis"    # F

    .line 315
    iput p1, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mMaxLatencyMillis:F

    .line 316
    return-object p0
.end method

.method public whitelist setQuery(Ljava/lang/String;)Landroid/app/cloudsearch/SearchRequest$Builder;
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .line 294
    iput-object p1, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mQuery:Ljava/lang/String;

    .line 295
    return-object p0
.end method

.method public whitelist setResultNumber(I)Landroid/app/cloudsearch/SearchRequest$Builder;
    .locals 0
    .param p1, "resultNumber"    # I

    .line 308
    iput p1, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultNumber:I

    .line 309
    return-object p0
.end method

.method public whitelist setResultOffset(I)Landroid/app/cloudsearch/SearchRequest$Builder;
    .locals 0
    .param p1, "resultOffset"    # I

    .line 301
    iput p1, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mResultOffset:I

    .line 302
    return-object p0
.end method

.method public whitelist setSearchConstraints(Landroid/os/Bundle;)Landroid/app/cloudsearch/SearchRequest$Builder;
    .locals 0
    .param p1, "searchConstraints"    # Landroid/os/Bundle;

    .line 323
    iput-object p1, p0, Landroid/app/cloudsearch/SearchRequest$Builder;->mSearchConstraints:Landroid/os/Bundle;

    .line 324
    return-object p0
.end method
