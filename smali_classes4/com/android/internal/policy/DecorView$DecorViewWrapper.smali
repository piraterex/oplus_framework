.class Lcom/android/internal/policy/DecorView$DecorViewWrapper;
.super Ljava/lang/Object;
.source "DecorView.java"

# interfaces
.implements Lcom/android/internal/policy/IDecorViewWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecorViewWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/DecorView;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/policy/DecorView;)V
    .locals 0

    .line 3013
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$DecorViewWrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/DecorView$DecorViewWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView$DecorViewWrapper;-><init>(Lcom/android/internal/policy/DecorView;)V

    return-void
.end method


# virtual methods
.method public blacklist getExtImpl()Lcom/android/internal/policy/IDecorViewExt;
    .locals 1

    .line 3016
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$DecorViewWrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmDecorViewExt(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/IDecorViewExt;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWindow()Lcom/android/internal/policy/PhoneWindow;
    .locals 1

    .line 3021
    iget-object v0, p0, Lcom/android/internal/policy/DecorView$DecorViewWrapper;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-$$Nest$fgetmWindow(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;

    move-result-object v0

    return-object v0
.end method
