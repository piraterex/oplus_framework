.class Landroid/view/PendingInsetsController$ShowRequest;
.super Ljava/lang/Object;
.source "PendingInsetsController.java"

# interfaces
.implements Landroid/view/PendingInsetsController$PendingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PendingInsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShowRequest"
.end annotation


# instance fields
.field private final blacklist mTypes:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 0
    .param p1, "types"    # I

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput p1, p0, Landroid/view/PendingInsetsController$ShowRequest;->mTypes:I

    .line 223
    return-void
.end method


# virtual methods
.method public blacklist replay(Landroid/view/InsetsController;)V
    .locals 1
    .param p1, "controller"    # Landroid/view/InsetsController;

    .line 227
    iget v0, p0, Landroid/view/PendingInsetsController$ShowRequest;->mTypes:I

    invoke-virtual {p1, v0}, Landroid/view/InsetsController;->show(I)V

    .line 228
    return-void
.end method
