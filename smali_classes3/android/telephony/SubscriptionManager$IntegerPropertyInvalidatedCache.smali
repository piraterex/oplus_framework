.class Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;
.super Landroid/app/PropertyInvalidatedCache;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntegerPropertyInvalidatedCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/PropertyInvalidatedCache<",
        "Ljava/lang/Integer;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mCacheKeyProperty:Ljava/lang/String;

.field private final blacklist mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final blacklist mInterfaceMethod:Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction<",
            "Lcom/android/internal/telephony/ISub;",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p2, "cacheKeyProperty"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction<",
            "Lcom/android/internal/telephony/ISub;",
            "Ljava/lang/Integer;",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 228
    .local p0, "this":Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;, "Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache<TT;>;"
    .local p1, "subscriptionInterfaceMethod":Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;, "Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction<Lcom/android/internal/telephony/ISub;Ljava/lang/Integer;TT;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Landroid/app/PropertyInvalidatedCache;-><init>(ILjava/lang/String;)V

    .line 229
    iput-object p1, p0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->mInterfaceMethod:Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;

    .line 230
    iput-object p2, p0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->mCacheKeyProperty:Ljava/lang/String;

    .line 231
    iput-object p3, p0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->mDefaultValue:Ljava/lang/Object;

    .line 232
    return-void
.end method


# virtual methods
.method public blacklist recompute(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 4
    .param p1, "query"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    .line 236
    .local p0, "this":Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;, "Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache<TT;>;"
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->mDefaultValue:Ljava/lang/Object;

    .line 239
    .local v0, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriptionService()Lcom/android/internal/telephony/ISub;

    move-result-object v1

    .line 240
    .local v1, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v1, :cond_0

    .line 241
    iget-object v2, p0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->mInterfaceMethod:Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;

    invoke-interface {v2, v1, p1}, Lcom/android/internal/util/FunctionalUtils$ThrowingBiFunction;->applyOrThrow(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 245
    .end local v1    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to recompute cache key for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->mCacheKeyProperty:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SubscriptionManager"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public bridge synthetic blacklist recompute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 218
    .local p0, "this":Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;, "Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache<TT;>;"
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager$IntegerPropertyInvalidatedCache;->recompute(Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
