.class public abstract Landroid/widget/Toast$Callback;
.super Ljava/lang/Object;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onToastHidden()V
    .locals 0

    .line 735
    return-void
.end method

.method public whitelist onToastShown()V
    .locals 0

    .line 730
    return-void
.end method
