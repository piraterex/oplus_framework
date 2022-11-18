.class public abstract Landroid/app/KeyguardManager$KeyguardDismissCallback;
.super Ljava/lang/Object;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/KeyguardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "KeyguardDismissCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDismissCancelled()V
    .locals 0

    .line 482
    return-void
.end method

.method public whitelist onDismissError()V
    .locals 0

    .line 471
    return-void
.end method

.method public whitelist onDismissSucceeded()V
    .locals 0

    .line 476
    return-void
.end method
