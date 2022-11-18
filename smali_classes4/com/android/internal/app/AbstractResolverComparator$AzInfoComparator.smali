.class Lcom/android/internal/app/AbstractResolverComparator$AzInfoComparator;
.super Ljava/lang/Object;
.source "AbstractResolverComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AbstractResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AzInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mCollator:Ljava/text/Collator;

.field final synthetic blacklist this$0:Lcom/android/internal/app/AbstractResolverComparator;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/AbstractResolverComparator;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/AbstractResolverComparator;
    .param p2, "context"    # Landroid/content/Context;

    .line 281
    iput-object p1, p0, Lcom/android/internal/app/AbstractResolverComparator$AzInfoComparator;->this$0:Lcom/android/internal/app/AbstractResolverComparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$AzInfoComparator;->mCollator:Ljava/text/Collator;

    .line 283
    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 3
    .param p1, "lhsp"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhsp"    # Landroid/content/pm/ResolveInfo;

    .line 287
    if-nez p1, :cond_0

    .line 288
    const/4 v0, -0x1

    return v0

    .line 289
    :cond_0
    if-nez p2, :cond_1

    .line 290
    const/4 v0, 0x1

    return v0

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/AbstractResolverComparator$AzInfoComparator;->mCollator:Ljava/text/Collator;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 279
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/AbstractResolverComparator$AzInfoComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result p1

    return p1
.end method
