.class public final synthetic Lcom/android/internal/app/ResolverListController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/ResolverListController;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/ResolverListController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverListController$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/ResolverListController;

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListController$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/app/ResolverListController;

    check-cast p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    check-cast p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ResolverListController;->lambda$topK$0$com-android-internal-app-ResolverListController(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result p1

    return p1
.end method
