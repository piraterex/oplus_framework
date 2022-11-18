.class Lcom/android/internal/policy/IDecorViewWrapper$1;
.super Ljava/lang/Object;
.source "IDecorViewWrapper.java"

# interfaces
.implements Lcom/android/internal/policy/IDecorViewExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/IDecorViewWrapper;->getExtImpl()Lcom/android/internal/policy/IDecorViewExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/IDecorViewWrapper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/IDecorViewWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/IDecorViewWrapper;

    .line 5
    iput-object p1, p0, Lcom/android/internal/policy/IDecorViewWrapper$1;->this$0:Lcom/android/internal/policy/IDecorViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
