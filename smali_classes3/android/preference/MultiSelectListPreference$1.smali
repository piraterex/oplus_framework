.class Landroid/preference/MultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/preference/MultiSelectListPreference;


# direct methods
.method constructor blacklist <init>(Landroid/preference/MultiSelectListPreference;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/MultiSelectListPreference;

    .line 188
    iput-object p1, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .line 190
    if-eqz p3, :cond_0

    .line 191
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {v0}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fgetmPreferenceChanged(Landroid/preference/MultiSelectListPreference;)Z

    move-result v1

    iget-object v2, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {v2}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fgetmNewValues(Landroid/preference/MultiSelectListPreference;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {v3}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fgetmEntryValues(Landroid/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fputmPreferenceChanged(Landroid/preference/MultiSelectListPreference;Z)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {v0}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fgetmPreferenceChanged(Landroid/preference/MultiSelectListPreference;)Z

    move-result v1

    iget-object v2, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {v2}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fgetmNewValues(Landroid/preference/MultiSelectListPreference;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/MultiSelectListPreference$1;->this$0:Landroid/preference/MultiSelectListPreference;

    invoke-static {v3}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fgetmEntryValues(Landroid/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/preference/MultiSelectListPreference;->-$$Nest$fputmPreferenceChanged(Landroid/preference/MultiSelectListPreference;Z)V

    .line 195
    :goto_0
    return-void
.end method
