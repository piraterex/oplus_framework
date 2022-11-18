.class public interface abstract Lcom/android/internal/app/ILoadIconTaskExt;
.super Ljava/lang/Object;
.source "ILoadIconTaskExt.java"


# static fields
.field public static final blacklist DEFAULT:Lcom/android/internal/app/ILoadIconTaskExt;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/android/internal/app/ILoadIconTaskExt$1;

    invoke-direct {v0}, Lcom/android/internal/app/ILoadIconTaskExt$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/ILoadIconTaskExt;->DEFAULT:Lcom/android/internal/app/ILoadIconTaskExt;

    return-void
.end method


# virtual methods
.method public blacklist getHolderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverListAdapter$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hookonPostExecute(Lcom/android/internal/app/IResolverListAdapterExt;Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .locals 0
    .param p1, "resolverListAdapterExt"    # Lcom/android/internal/app/IResolverListAdapterExt;
    .param p2, "displayResolveInfo"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 18
    return-void
.end method

.method public blacklist hooksetViewHolder(Lcom/android/internal/app/IResolverListAdapterExt;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)Z
    .locals 1
    .param p1, "resolverListAdapterExt"    # Lcom/android/internal/app/IResolverListAdapterExt;
    .param p2, "displayResolveInfo"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p3, "holder"    # Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 21
    const/4 v0, 0x0

    return v0
.end method
