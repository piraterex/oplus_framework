.class Lcom/android/internal/app/ResolverActivity$ResolverActivityWrapper;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Lcom/android/internal/app/IResolverActivityWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolverActivityWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    .line 2479
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolverActivityWrapper;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$ResolverActivityWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolverActivityWrapper;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    return-void
.end method


# virtual methods
.method public blacklist getLaunchedFromUid()I
    .locals 1

    .line 2501
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolverActivityWrapper;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getLaunchedFromUid()I

    move-result v0

    return v0
.end method

.method public blacklist getPersonalTabLabel()Ljava/lang/String;
    .locals 1

    .line 2483
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolverActivityWrapper;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$mgetPersonalTabLabel(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResolverActivityExt()Lcom/android/internal/app/IResolverActivityExt;
    .locals 1

    .line 2493
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolverActivityWrapper;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmResolverActivityExt(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2494
    sget-object v0, Lcom/android/internal/app/IResolverActivityExt;->DEFAULT:Lcom/android/internal/app/IResolverActivityExt;

    return-object v0

    .line 2496
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolverActivityWrapper;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$fgetmResolverActivityExt(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/IResolverActivityExt;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWorkTabLabel()Ljava/lang/String;
    .locals 1

    .line 2488
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolverActivityWrapper;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$mgetWorkTabLabel(Lcom/android/internal/app/ResolverActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist prepareIntentForCrossProfileLaunch(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2506
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolverActivityWrapper;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0, p1}, Lcom/android/internal/app/ResolverActivity;->-$$Nest$mprepareIntentForCrossProfileLaunch(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;)V

    .line 2507
    return-void
.end method
