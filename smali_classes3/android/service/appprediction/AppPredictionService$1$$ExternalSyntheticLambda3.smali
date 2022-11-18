.class public final synthetic Landroid/service/appprediction/AppPredictionService$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/service/appprediction/AppPredictionService;

    check-cast p2, Landroid/app/prediction/AppPredictionSessionId;

    invoke-static {p1, p2}, Landroid/service/appprediction/AppPredictionService$1;->lambda$requestPredictionUpdate$3(Ljava/lang/Object;Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method
