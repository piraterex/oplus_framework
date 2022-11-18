.class public Lcom/android/internal/app/ResolverListAdapter$ResolverListAdapterWrapper;
.super Ljava/lang/Object;
.source "ResolverListAdapter.java"

# interfaces
.implements Lcom/android/internal/app/IResolverListAdapterWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResolverListAdapterWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverListAdapter;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 1248
    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$ResolverListAdapterWrapper;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getResolverListAdapterExt()Lcom/android/internal/app/IResolverListAdapterExt;
    .locals 1

    .line 1252
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ResolverListAdapterWrapper;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverListAdapter;->-$$Nest$fgetmResolverListAdapterExt(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/IResolverListAdapterExt;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1253
    sget-object v0, Lcom/android/internal/app/IResolverListAdapterExt;->DEFAULT:Lcom/android/internal/app/IResolverListAdapterExt;

    return-object v0

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ResolverListAdapterWrapper;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-static {v0}, Lcom/android/internal/app/ResolverListAdapter;->-$$Nest$fgetmResolverListAdapterExt(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/app/IResolverListAdapterExt;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResolverListCommunicator()Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;
    .locals 1

    .line 1260
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$ResolverListAdapterWrapper;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    return-object v0
.end method
