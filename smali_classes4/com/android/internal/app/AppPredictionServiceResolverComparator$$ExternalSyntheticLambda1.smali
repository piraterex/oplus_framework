.class public final synthetic Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/AppPredictionServiceResolverComparator;

.field public final synthetic blacklist f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/AppPredictionServiceResolverComparator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/AppPredictionServiceResolverComparator;

    iput-object p2, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/AppPredictionServiceResolverComparator;

    iget-object v1, p0, Lcom/android/internal/app/AppPredictionServiceResolverComparator$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/app/AppPredictionServiceResolverComparator;->lambda$doCompute$1$com-android-internal-app-AppPredictionServiceResolverComparator(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
