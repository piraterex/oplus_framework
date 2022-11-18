.class public final enum Lcom/android/internal/widget/LockPatternView$DisplayMode;
.super Ljava/lang/Enum;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field public static final enum greylist Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field public static final enum greylist Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field public static final enum greylist Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 260
    new-instance v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const-string v1, "Correct"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 266
    new-instance v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const-string v3, "Animate"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/internal/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 272
    new-instance v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    const-string v5, "Wrong"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/internal/widget/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 255
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/internal/widget/LockPatternView$DisplayMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->$VALUES:[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 255
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/widget/LockPatternView$DisplayMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 255
    const-class v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;
    .locals 1

    .line 255
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->$VALUES:[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, [Lcom/android/internal/widget/LockPatternView$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/LockPatternView$DisplayMode;

    return-object v0
.end method
