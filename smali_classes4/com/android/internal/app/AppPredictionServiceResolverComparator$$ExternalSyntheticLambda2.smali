.class public final synthetic Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/AppPredictionServiceResolverComparator;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/AppPredictionServiceResolverComparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/app/AppPredictionServiceResolverComparator;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/app/AppPredictionServiceResolverComparator;

    check-cast p1, Landroid/app/prediction/AppTarget;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->lambda$handleSortedAppTargets$2$com-android-internal-app-AppPredictionServiceResolverComparator(Landroid/app/prediction/AppTarget;)V

    return-void
.end method
