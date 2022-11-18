.class Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;
.super Ljava/lang/Object;
.source "ResolverDrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ResolverDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunOnDismissedListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ResolverDrawerLayout;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V
    .locals 0

    .line 1249
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/ResolverDrawerLayout;Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 1252
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dispatchOnDismissed()V

    .line 1253
    return-void
.end method
