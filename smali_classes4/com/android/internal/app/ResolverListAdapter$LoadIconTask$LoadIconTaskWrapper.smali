.class public Lcom/android/internal/app/ResolverListAdapter$LoadIconTask$LoadIconTaskWrapper;
.super Ljava/lang/Object;
.source "ResolverListAdapter.java"

# interfaces
.implements Lcom/android/internal/app/ILoadIconTaskWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadIconTaskWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;

    .line 1037
    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask$LoadIconTaskWrapper;->this$1:Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getLoadIconTaskExt()Lcom/android/internal/app/ILoadIconTaskExt;
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask$LoadIconTaskWrapper;->this$1:Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;

    invoke-static {v0}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->-$$Nest$fgetmLoadIconTaskExt(Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;)Lcom/android/internal/app/ILoadIconTaskExt;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1042
    sget-object v0, Lcom/android/internal/app/ILoadIconTaskExt;->DEFAULT:Lcom/android/internal/app/ILoadIconTaskExt;

    return-object v0

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask$LoadIconTaskWrapper;->this$1:Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;

    invoke-static {v0}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->-$$Nest$fgetmLoadIconTaskExt(Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;)Lcom/android/internal/app/ILoadIconTaskExt;

    move-result-object v0

    return-object v0
.end method
