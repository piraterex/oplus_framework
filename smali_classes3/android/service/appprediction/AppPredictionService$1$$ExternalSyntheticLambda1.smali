.class public final synthetic Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/service/appprediction/AppPredictionService;

    check-cast p2, Landroid/app/prediction/AppPredictionSessionId;

    check-cast p3, Landroid/app/prediction/IPredictionCallback;

    invoke-static {p1, p2, p3}, Landroid/service/appprediction/AppPredictionService$1;->lambda$unregisterPredictionUpdates$2(Ljava/lang/Object;Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method
