.class public Lcom/android/internal/widget/ResolverDrawerLayout$ResolverDrawerLayoutWrapper;
.super Ljava/lang/Object;
.source "ResolverDrawerLayout.java"

# interfaces
.implements Lcom/android/internal/app/IResolverDrawerLayoutWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ResolverDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResolverDrawerLayoutWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ResolverDrawerLayout;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 1272
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$ResolverDrawerLayoutWrapper;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist dismiss()V
    .locals 1

    .line 1304
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$ResolverDrawerLayoutWrapper;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-static {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->-$$Nest$mdismiss(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    .line 1305
    return-void
.end method

.method public blacklist getResolverDrawerLayoutExt()Lcom/android/internal/widget/IResolverDrawerLayoutExt;
    .locals 1

    .line 1276
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$ResolverDrawerLayoutWrapper;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-static {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->-$$Nest$fgetmIResolverDrawerLayoutExt(Lcom/android/internal/widget/ResolverDrawerLayout;)Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1277
    sget-object v0, Lcom/android/internal/widget/IResolverDrawerLayoutExt;->DEFAULT:Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    return-object v0

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$ResolverDrawerLayoutWrapper;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-static {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->-$$Nest$fgetmIResolverDrawerLayoutExt(Lcom/android/internal/widget/ResolverDrawerLayout;)Lcom/android/internal/widget/IResolverDrawerLayoutExt;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isDismissable()Z
    .locals 1

    .line 1309
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$ResolverDrawerLayoutWrapper;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-static {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->-$$Nest$misDismissable(Lcom/android/internal/widget/ResolverDrawerLayout;)Z

    move-result v0

    return v0
.end method

.method public blacklist isNestedListChildScrolled()Z
    .locals 1

    .line 1289
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$ResolverDrawerLayoutWrapper;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-static {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->-$$Nest$misNestedListChildScrolled(Lcom/android/internal/widget/ResolverDrawerLayout;)Z

    move-result v0

    return v0
.end method

.method public blacklist performDrag(F)V
    .locals 1
    .param p1, "dy"    # F

    .line 1284
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$ResolverDrawerLayoutWrapper;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-static {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->-$$Nest$mperformDrag(Lcom/android/internal/widget/ResolverDrawerLayout;F)F

    .line 1285
    return-void
.end method

.method public blacklist setDismissOnScrollerFinished(Z)V
    .locals 1
    .param p1, "isFinished"    # Z

    .line 1294
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$ResolverDrawerLayoutWrapper;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-static {v0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout;->-$$Nest$fputmDismissOnScrollerFinished(Lcom/android/internal/widget/ResolverDrawerLayout;Z)V

    .line 1295
    return-void
.end method

.method public blacklist smoothScrollTo(IF)V
    .locals 1
    .param p1, "yOffset"    # I
    .param p2, "velocity"    # F

    .line 1299
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$ResolverDrawerLayoutWrapper;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/ResolverDrawerLayout;->-$$Nest$msmoothScrollTo(Lcom/android/internal/widget/ResolverDrawerLayout;IF)V

    .line 1300
    return-void
.end method
