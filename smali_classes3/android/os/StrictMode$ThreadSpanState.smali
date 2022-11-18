.class Landroid/os/StrictMode$ThreadSpanState;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadSpanState"
.end annotation


# instance fields
.field public greylist-max-o mActiveHead:Landroid/os/StrictMode$Span;

.field public greylist-max-o mActiveSize:I

.field public greylist-max-o mFreeListHead:Landroid/os/StrictMode$Span;

.field public greylist-max-o mFreeListSize:I


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 2611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/StrictMode$ThreadSpanState-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/StrictMode$ThreadSpanState;-><init>()V

    return-void
.end method
