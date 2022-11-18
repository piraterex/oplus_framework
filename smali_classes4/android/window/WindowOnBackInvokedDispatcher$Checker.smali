.class public Landroid/window/WindowOnBackInvokedDispatcher$Checker;
.super Ljava/lang/Object;
.source "WindowOnBackInvokedDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowOnBackInvokedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation


# instance fields
.field private final blacklist mApplicationCallBackEnabled:Z


# direct methods
.method public constructor blacklist <init>(Z)V
    .locals 0
    .param p1, "applicationCallBackEnabled"    # Z

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-boolean p1, p0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->mApplicationCallBackEnabled:Z

    .line 320
    return-void
.end method


# virtual methods
.method public blacklist checkApplicationCallbackRegistration(ILandroid/window/OnBackInvokedCallback;)Z
    .locals 3
    .param p1, "priority"    # I
    .param p2, "callback"    # Landroid/window/OnBackInvokedCallback;

    .line 329
    iget-boolean v0, p0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->mApplicationCallBackEnabled:Z

    if-nez v0, :cond_0

    instance-of v0, p2, Landroid/window/CompatOnBackInvokedCallback;

    if-nez v0, :cond_0

    .line 331
    const-string v0, "OnBackInvokedCallback"

    const-string v1, "OnBackInvokedCallback is not enabled for the application.\nSet \'android:enableOnBackInvokedCallback=\"true\"\' in the application manifest."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v0, 0x0

    return v0

    .line 337
    :cond_0
    if-ltz p1, :cond_1

    .line 341
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const/4 v0, 0x1

    return v0

    .line 338
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application registered OnBackInvokedCallback cannot have negative priority. Priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
