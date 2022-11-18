.class public final synthetic Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/ResolverActivity;

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda8;->f$0:Lcom/android/internal/app/ResolverActivity;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda8;->f$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->lambda$getWorkProfileNotSupportedMsg$2$com-android-internal-app-ResolverActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
