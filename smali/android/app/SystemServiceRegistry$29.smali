.class Landroid/app/SystemServiceRegistry$29;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
        "Landroid/view/inputmethod/InputMethodManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getService(Landroid/app/ContextImpl;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .line 542
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->forContext(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0

    .line 539
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$29;->getService(Landroid/app/ContextImpl;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    return-object p1
.end method
