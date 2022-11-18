.class public Lcom/android/internal/policy/TransitionAnimationExtPlugin;
.super Ljava/lang/Object;
.source "TransitionAnimationExtPlugin.java"


# static fields
.field public static blacklist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static blacklist hooclipRectLRAnimationSafely:Lcom/oplus/reflect/RefStaticMethod;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            Landroid/view/animation/Animation;,
            Landroid/graphics/Rect;,
            Landroid/graphics/Rect;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefStaticMethod<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist hookLoadAnimationSafely:Lcom/oplus/reflect/RefStaticMethod;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            Landroid/content/Context;,
            Ljava/lang/String;,
            I,
            Landroid/view/animation/Animation;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefStaticMethod<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 12
    const-class v0, Lcom/android/internal/policy/TransitionAnimationExtPlugin;

    const-string v1, "com.android.internal.policy.TransitionAnimationExtImpl"

    invoke-static {v0, v1}, Lcom/oplus/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/TransitionAnimationExtPlugin;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
