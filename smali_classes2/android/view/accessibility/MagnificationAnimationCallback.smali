.class public interface abstract Landroid/view/accessibility/MagnificationAnimationCallback;
.super Ljava/lang/Object;
.source "MagnificationAnimationCallback.java"


# static fields
.field public static final blacklist STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Landroid/view/accessibility/MagnificationAnimationCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/view/accessibility/MagnificationAnimationCallback$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/view/accessibility/MagnificationAnimationCallback;->STUB_ANIMATION_CALLBACK:Landroid/view/accessibility/MagnificationAnimationCallback;

    return-void
.end method

.method public static synthetic blacklist lambda$static$0(Z)V
    .locals 0
    .param p0, "success"    # Z

    .line 25
    return-void
.end method


# virtual methods
.method public abstract blacklist onResult(Z)V
.end method
