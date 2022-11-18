.class Lcom/android/internal/policy/PhoneWindow$PhoneWindowWrapper;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/policy/IPhoneWindowWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneWindowWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0

    .line 4065
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowWrapper;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/policy/PhoneWindow$PhoneWindowWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowWrapper;-><init>(Lcom/android/internal/policy/PhoneWindow;)V

    return-void
.end method


# virtual methods
.method public blacklist getDecorView()Lcom/android/internal/policy/DecorView;
    .locals 1

    .line 4088
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowWrapper;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->-$$Nest$fgetmDecor(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/DecorView;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtImpl()Lcom/android/internal/policy/IPhoneWindowExt;
    .locals 1

    .line 4093
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowWrapper;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->-$$Nest$fgetmPhoneWindowExt(Lcom/android/internal/policy/PhoneWindow;)Lcom/android/internal/policy/IPhoneWindowExt;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 4083
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowWrapper;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->-$$Nest$fgetmTitle(Lcom/android/internal/policy/PhoneWindow;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isForcedNavigationBarColor()Z
    .locals 1

    .line 4073
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowWrapper;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v0}, Lcom/android/internal/policy/PhoneWindow;->-$$Nest$fgetmForcedNavigationBarColor(Lcom/android/internal/policy/PhoneWindow;)Z

    move-result v0

    return v0
.end method

.method public blacklist setForcedNavigationBarColor(Z)V
    .locals 1
    .param p1, "isForced"    # Z

    .line 4068
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowWrapper;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->-$$Nest$fputmForcedNavigationBarColor(Lcom/android/internal/policy/PhoneWindow;Z)V

    .line 4069
    return-void
.end method

.method public blacklist setForcedStatusBarColor(Z)V
    .locals 1
    .param p1, "isForced"    # Z

    .line 4078
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$PhoneWindowWrapper;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->-$$Nest$fputmForcedStatusBarColor(Lcom/android/internal/policy/PhoneWindow;Z)V

    .line 4079
    return-void
.end method
