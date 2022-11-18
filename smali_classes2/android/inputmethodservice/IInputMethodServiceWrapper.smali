.class public interface abstract Landroid/inputmethodservice/IInputMethodServiceWrapper;
.super Ljava/lang/Object;
.source "IInputMethodServiceWrapper.java"


# virtual methods
.method public blacklist getExtImpl()Landroid/inputmethodservice/IInputMethodServiceExt;
    .locals 1

    .line 24
    new-instance v0, Landroid/inputmethodservice/IInputMethodServiceWrapper$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/IInputMethodServiceWrapper$1;-><init>(Landroid/inputmethodservice/IInputMethodServiceWrapper;)V

    return-object v0
.end method
