.class Lcom/android/internal/app/LocalePicker$1;
.super Landroid/widget/ArrayAdapter;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$fieldId:I

.field final synthetic blacklist val$inflater:Landroid/view/LayoutInflater;

.field final synthetic blacklist val$layoutId:I


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I

    .line 215
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    iput-object p5, p0, Lcom/android/internal/app/LocalePicker$1;->val$inflater:Landroid/view/LayoutInflater;

    iput p6, p0, Lcom/android/internal/app/LocalePicker$1;->val$layoutId:I

    iput p7, p0, Lcom/android/internal/app/LocalePicker$1;->val$fieldId:I

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 220
    if-nez p2, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/internal/app/LocalePicker$1;->val$inflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/internal/app/LocalePicker$1;->val$layoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 222
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Lcom/android/internal/app/LocalePicker$1;->val$fieldId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 223
    .local v1, "text":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 225
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "text":Landroid/widget/TextView;
    :cond_0
    move-object v0, p2

    .line 226
    .restart local v0    # "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 228
    .restart local v1    # "text":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/LocalePicker$1;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 229
    .local v2, "item":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {v2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 232
    return-object v0
.end method
