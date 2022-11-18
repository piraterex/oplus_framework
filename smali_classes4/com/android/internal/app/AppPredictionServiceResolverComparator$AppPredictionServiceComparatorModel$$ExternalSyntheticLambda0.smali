.class public final synthetic Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;

    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel;->lambda$getComparator$0$com-android-internal-app-AppPredictionServiceResolverComparator$AppPredictionServiceComparatorModel(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result p1

    return p1
.end method
