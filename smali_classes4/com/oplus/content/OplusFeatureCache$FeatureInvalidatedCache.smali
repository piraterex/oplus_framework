.class final Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;
.super Ljava/lang/Object;
.source "OplusFeatureCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/content/OplusFeatureCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FeatureInvalidatedCache"
.end annotation


# instance fields
.field private blacklist mFeatureID:I

.field private final blacklist mMemoryFeatureCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPersistFeatureCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReadonlyFeatureCache:Landroid/app/PropertyInvalidatedCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/PropertyInvalidatedCache<",
            "Lcom/oplus/content/OplusFeatureCache$HasOplusFeatureQuery;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFeatureID(Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;)I
    .locals 0

    iget p0, p0, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;->mFeatureID:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMemoryFeatureCache(Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;)Landroid/app/PropertyInvalidatedCache;
    .locals 0

    iget-object p0, p0, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;->mMemoryFeatureCache:Landroid/app/PropertyInvalidatedCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPersistFeatureCache(Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;)Landroid/app/PropertyInvalidatedCache;
    .locals 0

    iget-object p0, p0, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;->mPersistFeatureCache:Landroid/app/PropertyInvalidatedCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReadonlyFeatureCache(Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;)Landroid/app/PropertyInvalidatedCache;
    .locals 0

    iget-object p0, p0, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;->mReadonlyFeatureCache:Landroid/app/PropertyInvalidatedCache;

    return-object p0
.end method

.method public constructor blacklist <init>(I)V
    .locals 3
    .param p1, "featureID"    # I

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache$1;

    const/16 v1, 0x100

    const-string/jumbo v2, "sys.cache.has_feature_readonly"

    invoke-direct {v0, p0, v1, v2}, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache$1;-><init>(Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;->mReadonlyFeatureCache:Landroid/app/PropertyInvalidatedCache;

    .line 197
    new-instance v0, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache$2;

    const-string/jumbo v2, "sys.cache.has_feature_persist"

    invoke-direct {v0, p0, v1, v2}, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache$2;-><init>(Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;->mPersistFeatureCache:Landroid/app/PropertyInvalidatedCache;

    .line 210
    new-instance v0, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache$3;

    const-string/jumbo v2, "sys.cache.has_feature_memory"

    invoke-direct {v0, p0, v1, v2}, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache$3;-><init>(Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;->mMemoryFeatureCache:Landroid/app/PropertyInvalidatedCache;

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;->mFeatureID:I

    .line 226
    iput p1, p0, Lcom/oplus/content/OplusFeatureCache$FeatureInvalidatedCache;->mFeatureID:I

    .line 227
    return-void
.end method
